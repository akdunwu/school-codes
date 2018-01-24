%Data input.
%Initial conditions begin.
%Variables are n*1 vectors.
clear;
acName={'cash' 'LTBonds' 'LBonds' 'SBonds' 'IntStocks'};
acRet=[-1.38 0 7.24 10.67 9.17]./100;
acSigma=[2.66 11.80 19.35 30.14 25.61]./100;
acCorr=[1 -.03 -.11 -.02 -.2;...
    -.03 1 .47 .31 .21;...
    -.11 .47 1 .74 .47;...
    -.02 .31 .74 1 .4;...
    -.2 .21 .47 .4 1];
acCov=corr2cov(acSigma,acCorr);%Annual
%50 paths for simulation.
nPath=1000;
%Step/precision of final plot, in terms of sigma.
stepSigma=.005; %Was 0.001%.
%Initial conditions end.

%Path generation begins.
%portsim for simulation, use expect
simRet=portsim(acRet./252,acCov./252,252,[],nPath,'Exact'); %Daily sim.
simRetMean=mean(simRet,1).*21; %Monthly Return.
simSigma=std(simRet,[],1).*sqrt(21); %Monthly Sigma.

simRetMean=squeeze(simRetMean);
simSigma=squeeze(simSigma);
%Note:Portfolio only accept monthly return and sigma.
%Path generation ends

for i=1:nPath,
    simCorr(:,:,i)=corr(simRet(:,:,i));
    simCov(:,:,i)=corr2cov(simSigma(:,i)',simCorr(:,:,i)); %Monthly Cov.
end
%Question:Do we calculate new correlation? I calculated it here.

riskMin=max(min(simSigma,[],1))*sqrt(12);%Annual.
riskMax=min(max(simSigma,[],1))*sqrt(12);%Annual.
riskMin=max(riskMin,min(acSigma)); %Theoretical bounds for risk.
riskMax=min(riskMax,max(acSigma)); %Theoretical bounds for risk.

riskRange=riskMin:stepSigma:riskMax;
%Precision was 0.1%, Now 0.5%.
%Annual.

%portfolio for efficient portfolio. estimateFrontierByRisk.Take 100-200
%sample points for plotting.Or, use the numel(X) for sampling.

%Result presentation: sigma-R-weight-I.
%I is the identifier for feasible range.
simResult=zeros(numel(riskRange),3+numel(acRet),nPath);
for i=1:nPath,
    simResult(:,1,i)=riskRange';
end

calcTick=0;
warning('off','finance:Portfolio:estimateFrontierByRisk:InfeasibleTargetRisk');
for i=1:nPath,
    p=Portfolio('AssetList',acName);
    p=p.setAssetMoments(simRetMean(:,i),simCov(:,:,i));
    p=p.setDefaultConstraints;
    %Note:Portfolio only accept monthly return and sigma.
    
    %Feasible range must first be estimated.
    extremeWgt=estimateFrontierLimits(p);
    extremeRisk=estimatePortRisk(p,extremeWgt);
    lowRisk=extremeRisk(1)*sqrt(12); %Annual.
    highRisk=extremeRisk(2)*sqrt(12); %Annual.
    
    %Next:estimateFrontierByRisk.
    for j=1:size(riskRange,2),
        if (riskRange(j)>=lowRisk)&&(riskRange(j)<=highRisk),
            xWgt=p.estimateFrontierByRisk(riskRange(j)/sqrt(12)); %Input must be monthly risk.
            [pRisk,pRet]=p.estimatePortMoments(xWgt);
            simResult(j,2,i)=pRet*12; %Convert to Annual Ret.
            simResult(j,3:(end-1),i)=xWgt';
            simResult(j,end,i)=1; %Identifies the point within Frontier.
        else
        end
        calcTick=calcTick+1;
        fprintf('Completed: %d of %d calculations.\n',calcTick,nPath*size(riskRange,2));
    end
end

warning('on','finance:Portfolio:estimateFrontierByRisk:InfeasibleTargetRisk');

%Check: mvnrnd;simulateNormalScenariosByMoments;monthly or annual data.

%Average.
%resultsMean:sigma-R-weight.
resultsMean=zeros(size(simResult,1),(size(simResult,2)-1));
resultsMean(:,1)=riskRange';

%First need to adjust for feasible range.
%sumResult:R-weight-I.
sumResult=sum(simResult(:,2:end,:),3);
for i=1:size(riskRange,2),
    if sumResult(i,end)~=0,
        sumResult(i,:)=sumResult(i,:)./(sumResult(i,end));
    else
    end
end
resultsMean(:,2:end)=sumResult(:,1:(end-1));
%Plot.
area(resultsMean(:,1),resultsMean(:,3:end));
legend(acName,'Location','Southwest');
grid on;
set(gca,'Layer','top');
colormap summer;
plotTitle=sprintf('Optimal Portfolio, Number of Paths = %d, Precision = %g%%',nPath,stepSigma*100);
title(plotTitle);
axis([riskRange(1) riskRange(end) 0 1]);
xlabel('Annual \sigma (decimal)');
ylabel('Asset Weights');
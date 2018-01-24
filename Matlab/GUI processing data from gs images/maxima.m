%Automatically identifies the point where pressure is the largest, and records into a separate xls file for later use.

clear;
addpath(pwd);
delete([pwd '\cal\maximi.xls']);
readfiles=dir('*.xls');
N=length(readfiles);
for i=1:N,
    clearvars -except maximus i readfiles N;
    sheet2=xlsread(readfiles(i).name,2);
    numerus=sheet2(:,1:2);
    maximus(i,1)=str2num(readfiles(i).name(1:numel(readfiles(i).name)-4));
    maximus(i,2:12)=zeros(1,11);
    maximus(i,2:5)=[sheet2(1,10:13)];
    
    maximus(i,6)=1./(maximus(i,3)+.06)./3.*(4/3*pi/20).^(-1/3).*(0.1./(maximus(i,3)+.16)).^(1/1.4).*maximus(i,5);
    
    %dpdt_2n
    
    if max(numerus(:,2))-min(numerus(:,2))<=0.07,
        continue
    elseif max(numerus(:,2))<=0.01,
        continue
    end
    
    n=sheet2(1,7);
    n=floor(1.5*n);
    Nrow=find(numerus(:,2)==max(numerus(:,2)));
    Nrow=Nrow(1);
    if Nrow==1,
        continue;
    end
    
    curve=numerus(1:Nrow,:);
    for j=1:numel(curve(:,1)),
        p_smooth2n(j,1)=curve(j,1);
        a=max([1 j-n]);
        b=min([numel(curve(:,1)) j+n]);
        p_smooth2n(j,2)=sum(curve(a:b,2))/(b-a+1);
    end
    clear j a b;
    curve_diff=diff(p_smooth2n);
    for j=1:numel(curve(:,1)),
        if j==1,
            p_smooth2n(j,3)=curve_diff(j,2)./curve_diff(j,1);
        elseif j==numel(curve(:,1)),
            p_smooth2n(j,3)=curve_diff(j-1,2)./curve_diff(j-1,1);
        else p_smooth2n(j,3)=.5*(curve_diff(j,2)./curve_diff(j,1)+curve_diff(j-1,2)./curve_diff(j-1,1));
        end
    end
    clear curve_diff;
    [maximus(i,8) index]=max(p_smooth2n(:,3));
    maximus(i,7)=p_smooth2n(index,1);
 
    maximus(i,9)=1./(maximus(i,3)+.06)./3.*(4/3*pi/20).^(-1/3).*(0.1./(maximus(i,3)+.16)).^(1/1.4).*maximus(i,8);
    %dfdx=-(1895891932984771*y*(1/(10*(x + 4/25)))^(5/7))/(3377699720527872*(x + 3/50)^2) - (1895891932984771*y)/(47287796087390208*(1/(10*x + 8/5))^(2/7)*(x + 4/25)^2*(x + 3/50));
    %dfdy=(1895891932984771*(1/(10*(x + 4/25)))^(5/7))/(3377699720527872*(x + 3/50))
    %x=maximus(i,3)=pmax,y=maximus(i,8)=dpdtmax;
    
    
        
    clear index p_smooth2n;
    
    curve_diff=diff(curve);
    for j=1:numel(curve(:,1)),
        if j==1,
            p_origin(j,1)=curve_diff(j,2)./curve_diff(j,1);
        elseif j==numel(curve(:,1)),
            p_origin(j,1)=curve_diff(j-1,2)./curve_diff(j-1,1);
        else p_origin(j,1)=.5*(curve_diff(j,2)./curve_diff(j,1)+curve_diff(j-1,2)./curve_diff(j-1,1));
        end
    end
    
    [maximus(i,11) index]=max(p_origin(:,1));
    maximus(i,10)=curve(index,1);
    
    maximus(i,12)=1./(maximus(i,3)+.06)./3.*(4/3*pi/20).^(-1/3).*(0.1./(maximus(i,3)+.16)).^(1/1.4).*maximus(i,11);
    
    maximus(i,3)=maximus(i,3)+0.16;    
end
headers={'#','tpmax','pmax','t-dpdtmax-n-smoothed','dpdt-max-n-smoothed','SL','t-2n','dpdtmax','SL','t-original','dpdt','SL'};
[A,I]=sort(maximus(:,1));
for i=1:N,
maximae(i,:)=maximus(I(i),:);
end
maximus=maximae;
mkdir('cal');
addpath([pwd '\cal']);
fileattrib([pwd '\cal'],'+w');
xlswrite([pwd '\cal\maximi.xls'],headers,'Sheet1','A1');
xlswrite([pwd '\cal\maximi.xls'],maximus,'Sheet1','A2');
    
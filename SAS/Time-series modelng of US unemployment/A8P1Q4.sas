data umemp;
infile 'D:\Academie\6271\A8\UNEMPLOYMENT_OLD.txt';
input unemp;
time=_N_;

proc arima;
identify var=unemp(1,12);
estimate p=(1)(12) method=uls noconstant plot;
proc arima;
identify var=unemp(1,12);
estimate p=(1,2)(12,24) method=uls noconstant plot;
run;

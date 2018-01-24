data umemp;
infile 'D:\Academie\6271\A8\UNEMPLOYMENT_OLD.txt';
input unemp;
time=_N_;

proc arima;
identify var=unemp(1) nlag=48;

proc arima;
identify var=unemp(1,12) nlag=48;

run;

data UKEAR;
infile 'D:\Academie\6271\A5\UKEAR.TXT';
input CEAR UNEMP INFL PARTY;
TIME=_N_;

*Q1.1;
proc reg data=UKEAR;
model CEAR=UNEMP INFL PARTY;
output out=CEAROUT r=CEARERROR;

*Q1.2;
proc arima data=CEAROUT;
identify var=CEARERROR;

*Q1.4;
*proc autoreg data=UKEAR;
*model CEAR=UNEMP INFL PARTY/nlag=2 method=ULS;
*output out=CEAROUT r=CEARERROR;

*proc arima data=CEAROUT;
*identify var=CEARERROR;

proc autoreg data=UKEAR;
model CEAR=UNEMP INFL PARTY/nlag=1 method=ULS;
output out=CEAROUT r=CEARERROR;

*Q1.5;
proc arima data=CEAROUT;
identify var=CEARERROR;
run;

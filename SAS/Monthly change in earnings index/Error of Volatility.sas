data UKEAR;
infile 'D:\Academie\6271\A5\UKEAR.TXT';
input CEAR UNEMP INFL PARTY;
TIME=_N_;

proc autoreg data=UKEAR;
model CEAR=UNEMP INFL PARTY/method=ULS;
output out=CEAROUT r=CEARERROR;

data CEAROUT;
set CEAROUT;
CEARERROR2=CEARERROR**2;

proc arima data=CEAROUT;
identify var=CEARERROR2 nlag=24;

proc autoreg data=CEAROUT;
model CEARERROR=/noint archtest;

run;

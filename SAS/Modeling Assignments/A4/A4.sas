data GNP;
infile 'D:\Academie\6271\A4\GNP_Quarterly.txt';
input g_GNP;

quarter=_N_;
goptions reset=all;

*Q1.1;
proc gplot;
plot g_GNP*quarter/hminor=0;
symbol i=join v=none;

*Q1.2;
proc arima data=GNP;
identify var=g_GNP nlag=6;
*Stationary, 3rd order autocorrelation check.;

*Q2.3.1;
proc arima data=GNP;
identify var=g_GNP;
estimate p=2 plot;
*AR(2) insignificant;

*Q2.3.2;
proc arima data=GNP;
identify var=g_GNP;
estimate p=1 plot;
run;
*Q3 should be included.

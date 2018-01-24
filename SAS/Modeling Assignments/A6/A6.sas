data CRESTPR;
infile 'D:\Academie\6271\A6\CrestPrice.txt';
input CRESTPR;

TIME=_N_;
DIFF_CRESTPR=dif(CRESTPR);

*Q1.1;
proc gplot;
plot CRESTPR*TIME/hminor=0;
symbol i=join v=none;

proc arima data=CRESTPR;
identify var=CRESTPR;

*Q1.2;
proc arima data=CRESTPR;
identify var=CRESTPR(1);
*MA(1) process;

proc gplot;
plot DIFF_CRESTPR*TIME;
symbol i=join v=none;

*Q1.3;
proc arima data=CRESTPR;
identify var=CRESTPR(1) noprint;
estimate q=1 method=ULS plot;

proc arima data=CRESTPR;
identify var=CRESTPR(1) noprint;
estimate q=1 method=ULS noconstant plot;
*very good model!;

*Q1.4;
proc arima data=CRESTPR;
identify var=CRESTPR(1) noprint;
estimate p=1 method=ULS plot;
*Inverse autocorr does not seem well.;


run;

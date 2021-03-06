DATA CREST;
INFILE "D:\Academie\6271\A6\CrestPrice.txt";
INPUT CRESTPR;

PROC GPLOT DATA=CREST;
plot CRESTPR*date;
symbol i=join; *TS plot;

PROC ARIMA DATA=CREST;
IDENTIFY VAR=CRESTPR NLAG=20;
IDENTIFY VAR=CRESTPR(1) NLAG=20; *ACF/IACF/PACF;

PROC ARIMA DATA=CREST;
IDENTIFY VAR=CRESTPR(1) NOPRINT;
ESTIMATE Q=1 METHOD=ULS; *ARIMA(0,1,1);

PROC ARIMA DATA=CREST;
IDENTIFY VAR=CRESTPR(1) NOPRINT;
ESTIMATE Q=1 METHOD=ULS NOCONSTANT; *delete CONSTANT from ARIMA(0,1,1);

PROC ARIMA DATA=CREST;
IDENTIFY VAR=CRESTPR(1) NOPRINT;
ESTIMATE P=1 METHOD=ULS; *ARIMA(1,1,0);

Run;


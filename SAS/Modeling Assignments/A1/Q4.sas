DATA STOCK;
INFILE "D:\Academie\6271\A1\daily_stocks.TXT";
INPUT AMEX CAT EXMOB;
LOGRET_AMEX=LOG(1+AMEX);
*LOGRET_CAT=LOG(1+CAT);
*LOGRET_EXMOB=LOG(1+EXMOB);

PROC ARIMA DATA=STOCK;
IDENTIFY VAR=LOGRET_AMEX;
RUN;

*PROC PRINT;
*RUN;

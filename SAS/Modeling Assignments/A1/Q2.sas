﻿DATA STOCK;
INFILE "D:\Academie\6271\A1\daily_stocks.TXT";
INPUT AMEX CAT EXMOB;
LOGRET_AMEX=DIF(LOG(AMEX));
LOGRET_CAT=DIF(LOG(CAT));
LOGRET_EXMOB=DIF(LOG(EXMOB));

PROC UNIVARIATE;
VAR AMEX CAT EXMOB;
RUN;

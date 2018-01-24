proc import datafile='D:\Academie\EURUSD\overall.xlsx' out=overall dbms=xlsx replace;
GETNAMES=yes;
format date yymmdd10.
run;

proc print data=overall;
run;
PROC REG DATA=OVERALL;
var EXUSEU inflation fiscalpolicy stockprice capitalinflow m1 gdp oilprice govdebt interestrate; 
model EXUSEU=inflation fiscalpolicy stockprice capitalinflow m1 gdp oilprice govdebt interestrate/CLI r;
output out=EXUSEUout p=EXUSEUpred;
RUN;

proc gplot data=EXUSEUout;
plot (EXUSEU EXUSEUpred)*date/overlay legend;
symbol i=join w=2;
Title "Actual exchange rate and regression line: ";
run;

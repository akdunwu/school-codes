data homeresales;
infile 'D:\Academie\6271\A3\Homeresales.TXT';
input homeresales;

do i= 1 to 12;
if mod(_N_,12)=i then months=i;
if mod(_N_,12)=0 then months=12;
end;

*M1;
*Q1.1;
month=_N_;
goptions reset=all;
proc gplot;
plot homeresales*month/hminor=0;
symbol i=join l=1 v=none;

*proc print;

*Q1.2;
proc sort;
by months;
proc boxplot;
plot homeresales*months;

*proc print;

run;

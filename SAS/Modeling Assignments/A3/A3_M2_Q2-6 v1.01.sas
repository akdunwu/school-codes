data homeresales;
infile 'D:\Academie\6271\A3\Homeresales.TXT';
input homeresales;

*M2;
array seasind{12} m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12;

do i= 1 to 12;
if mod(_N_,12)=i then seasind{i}=1;
else seasind{i}=0;
if mod(_N_,12)=0 then seasind{12}=1;
else seasind{12}=0;
end;

month=_N_;

*proc print; 

proc reg data=homeresales;
*Q2;
model homeresales=m1 m2 m3 m4 m5 m6 m7 m9 m10 m11 m12 month /CLI CLB;

*Q6.1;
output out=results;
output p=pred;

test m1=0, m2=0, m3=0, m4=0, m5=0, m6=0, m7=0, m9=0, m10=0, m11=0, m12=0;
*Q4.2;
test month=0;

*Q5;
test m6=m7;


*Q6.1;
goptions reset=all;
proc gplot;
legend1 frame;
plot homeresales*month pred*month/overlay legend=legend1 hminor=0;
symbol1 i=join c=blue v=none line=1;
symbol2 i=join c=red v=none line=2;

run;

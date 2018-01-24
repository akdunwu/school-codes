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

proc reg data=homeresales;
*Q2;
model homeresales=m1 m2 m3 m4 m5 m6 m7 m9 m10 m11 m12 month /CLI CLB;
*output out=results p=pred;


proc reg data=homeresales;
*Q2;
model homeresales=m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 month /CLI CLB;

run;

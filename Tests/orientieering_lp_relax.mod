param n;
set V := 1 ..n;

param c{i in V, j in V} default 1000;
param s{i in V};
param c_limit;

var x{i in V, j in V} >= 0;
var y{i in V} <= 1;
var u{i in V};

maximize stars:
  sum{i in 1..n} y[i] * s[i];
  
s.t. spaltensumme {j in 1..n}:
  sum{i in 1..n} x[i,j] = y[j];
  
s.t. zeilensumme {i in 1..n}:
  sum{j in 1..n} x[i,j] = y[i];
  
#s.t. tour_start_in_depot:
#    y[1] = 1;

#s.t. diagonale_nicht_erlaubt{i in 1..n}:
#    x[i, i] = 0;
    
s.t. max_time:
    sum{i in 1..n, j in 1..n} x[i,j] * c[i,j] <= c_limit;
    
s.t. lp_relax_x {i in 1..n, j in 1..n}:
    0 <= x[i,j] <= 1;
  
#s.t. miller_tucker_zemlin_1{i in 2..n}:
#    2 <= u[i] <= n;

#s.t. miller_tucker_zemlin_2{i in 2..n, j in 2..n}:
#    u[i] - u[j] + 1 <= (n-1)*(1-x[i,j]);
    
#s.t. anzahl_fix:
#    sum{i in 1..n, j in 1..n} x[i,j] <= 7;
    
s.t. fix_1:
    x[1,4] = 1;
    
s.t. fix_2:
    x[4,2] = 1;
    
s.t. fix_3:
    x[2,20] = 1;
    
#s.t. fix_4:
#    x[20, 13] = 1;
    
#s.t. fix_5:
#    x[13,16] = 1;
    
#s.t. fix_6:
#    x[16,3] = 1;
param n;
set V := 1 ..n;

param c{i in V, j in V} default 10000;
param s{i in V};
param c_limit;
param alpha := 0.00001;

var x{i in V, j in V} binary;
var y{i in V} binary;
var u{i in V};

maximize stars:
  sum{i in 1..n} y[i] * s[i] - alpha * sum{i in 1..n, j in 1..n} x[i,j] * c[i,j];
  
s.t. spaltensumme {j in 1..n}:
  sum{i in 1..n} x[i,j] = y[j];
  
s.t. zeilensumme {i in 1..n}:
  sum{j in 1..n} x[i,j] = y[i];
  
s.t. tour_start_in_depot:
    y[1] = 1;

s.t. diagonale_nicht_erlaubt{i in 1..n}:
    x[i, i] = 0;
    
s.t. max_time:
    sum{i in 1..n, j in 1..n} x[i,j] * c[i,j] <= c_limit;
  
s.t. miller_tucker_zemlin_1{i in 2..n}:
    2 <= u[i] <= n;

s.t. miller_tucker_zemlin_2{i in 2..n, j in 2..n}:
    u[i] - u[j] + 1 <= (n-1)*(1-x[i,j]);
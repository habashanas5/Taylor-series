>> syms x ; 
>> f = sin(x);
>> x0 = 0; 
>> N = 3 ; 
>> taylorApproximation(f,x0,N);
f(x) = sin(x)
f(0.000000) = 0.000000
f^1(x) = cos(x)
f^1(0.000000) = 1.000000
f^2(x) = -sin(x)
f^2(0.000000) = 0.000000
f^3(x) = -cos(x)
f^3(0.000000) = -1.000000
f(x0+h) = 0 + (1*(h)^1)/1 + (0*(h)^2)/2 + (-1*(h)^3)/6
Final Numerical Result (Symbolic): x - x^3/6

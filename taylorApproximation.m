function final_result = taylorApproximation(f, xo, N)
    syms x h;
    df = f;
    value = subs(df, x, xo);
    result = char(value);
    
    fprintf('f(x) = %s\n', char(f));
    fprintf('f(%f) = %f\n', xo, value);
    
    taylor_series_str = ['f(x0+h) = ' char(value)];
    taylor_series_expanded = value;
    
    for n = 1:N
        df = diff(df, x);
        dfx = subs(df, x, xo);
        term_symbolic = dfx * (h)^n / factorial(n);
        
        taylor_series_str = [taylor_series_str ' + (' char(dfx) '*(' char(h) ')^' num2str(n) ')/' num2str(factorial(n))];
        
        taylor_series_expanded = taylor_series_expanded + term_symbolic;
      
        fprintf('f^%d(x) = %s\n', n, char(df));
        fprintf('f^%d(%f) = %f\n', n, xo, dfx);
    end
    
    fprintf('%s\n', taylor_series_str);
    h_value = x - xo;
    taylor_series_numeric = subs(taylor_series_expanded, h, h_value);   
    fprintf('Final Numerical Result (Symbolic): %s\n', char(taylor_series_numeric));   
    final_result = char(taylor_series_numeric); 
end

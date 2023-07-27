function h = myfspecial(Radius)
    
    r = ceil(Radius);

    h = zeros(r * 2 + 4, r * 2 + 4);
    [h_row_size, h_col_size] = size(h);
    
    for row = 1:h_row_size
        for col = 1:h_col_size
            x = row - (r+2);
            y = col - (r+2);
            
            if sqrt(x .^ 2 + y .^2) > r
               h(row, col) = 0;
            else
               h(row, col) = 1;
            end  
        end
    end
end
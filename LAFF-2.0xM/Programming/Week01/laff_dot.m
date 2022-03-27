function [ alpha ] = laff_dot( x, y )

%function to calculate the dot product of two vectors x and y

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

% Make sure x and y are (row or column) vectors of equal length
if ( m_x ~= 1 & n_x ~= 1 ) | ( m_y ~= 1 & n_y ~= 1 )
    alpha = 'FAILED';
    return
end



if (m_x * n_x ~= m_y * n_y)
    alpha = 'FAILED';
    return
end

alpha = 0;

if ( n_x == 1 )% x is a column vector
    if (n_y ==1) % y is also a column vector
        for i = 1:m_x
            alpha = alpha + x(i,1)*y(i,1);
        end
    else % y is a row vector
        for i = 1:m_x
            alpha = alpha + x(i,1)*y(1,i);
        end
    end
else % x is a row vector
    if (m_y == 1) % y is a row vector
        for i = 1:n_x
            alpha = alpha + x(1,i)*y(1,i);
        end
    else % y is a column vector
        for i = 1:n_x
            alpha = alpha + x(1,i)*y(i,1);
        end
    end
end
return


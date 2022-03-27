function [ alpha ] = laff_norm2( x )

%function to calculate the dot product of two vectors x and y

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );

% Make sure x and y are (row or column) vectors of equal length
if ( m_x ~= 1 & n_x ~= 1 )
    alpha = 'FAILED';
    return
end

if ~isvector(x)
    alpha = 'FAILED';
    return
end

alpha = sqrt(laff_dot(x,x));


return


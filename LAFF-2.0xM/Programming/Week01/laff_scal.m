function [x_out] = laff_scale(alpha, x)

% scale a vector x by alpha and return the output y_out

%extract size of vector x
[m_x, n_x] = size(x);

%check if alpha and x are scalar and vector respectively
if ~isscalar(alpha)
    x_out = 'FAILED';
    return
end

if ~isvector(x)
    x_out = 'FAILED';
    return
end

if m_x > 1 && n_x > 1
    x_out = 'FAILED';
    return
end

if (n_x > 1) %x is a row vector
    for  i = 1:n_x
        x(1,i) = alpha * x(1,i);
    end
elseif (m_x > 1) %x is column vector
    for i = 1:m_x
        x(i,1) = alpha * x(i,1);
    end
elseif (n_x==1 && m_x==1) %x is single unit vector
    x(1,1) = alpha* x(1,1);

end


%return updated vector
x_out = x;

return
end
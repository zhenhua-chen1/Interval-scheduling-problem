function is_Reasonable(s_i,t_i)
    [~,n]=size(s_i);
    [~,m]=size(t_i);
    if m~=n
        error('Please enter the same number of moments in s_i as t_i')
    end
    
    for i=1:n
        if s_i(i)>t_i(i)
            error('Please enter the moments in s_i that are less than each of t_i.')
        end
    end
end
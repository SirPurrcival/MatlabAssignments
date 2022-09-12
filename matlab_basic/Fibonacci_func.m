function [b,c] = Fibonacci_func(a)
    b = [];
    c = [];
    for i = 1:a
        if i == 1
            b(i) = 0;
        end
        if i == 2
            b(i) = 1;
        end
        if i > 2
            b(i) = b(i-2) + b(i-1);
            c(i-1) = b(i)/b(i-1);
        end
        plot(c)
    end
end
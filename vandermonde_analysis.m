function [reciprocalCondV] = vandermonde_analysis(n)
    fprintf('##########################################################################################\n');
    reciprocalCondV = zeros(1,n);
    for c = 0:6
        V=zeros(n,n);
        for i = 1:n
            V(i,1) = 1;
        end
        for i = 1:n
            for j = 2:n
                V(i,j) = (i-1-c)^(j-1);
            end
        end
        X = [' For c = ',num2str(c), ':'];
        disp(X)
        fprintf('\n The Vandermond Matrix V is:\n')
        disp(V)
        reciprocalCondV(1,c+1) = rcond(V);
        X = ['reciprocal cond(V)= ',num2str(reciprocalCondV(1,c+1)), ' <====> cond(V) = 1/(',num2str(reciprocalCondV(1,c+1)),') = ', num2str(reciprocalCondV(1,c+1)^(-1))];
        disp(X)
        fprintf('##########################################################################################\n');
    end
    fprintf('\n');
    X = ['Max[cond(V)] = ',num2str(max(reciprocalCondV))];
    disp(X)

    % Use this code: [reciprocalCondV] = Question3b(7)






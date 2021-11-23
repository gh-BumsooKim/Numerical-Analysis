%% LU factorization

A = [10 2 -1; -3 -6 2; 1 1 5];

A_init = A;

b = [-27 61.5 21.5];
A(:,4) = b;

A(2,:) = A(2,:) - A(1,:)*(A(2,1)/A(1,1));
A(3,:) = A(3,:) - A(1,:)*(A(3,1)/A(1,1));

A(3,:) = A(3,:) - A(2,:)*(A(3,2)/A(2,2));

x = zeros(3,1);

for ii = 3:-1:1
    temp = 0;
    for j = 2:-1:ii
        temp = temp + A(ii,j+1)*x(j+1);
    end
    x(ii) = (-A(ii,4) - temp)/A(ii,ii);
end

[L, U] = lu(A_init);
A_recon = L*U;

if round(A_recon) == round(A_init)
    disp("Done");
else
    disp("Fail");
end
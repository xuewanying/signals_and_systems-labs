% 用卷积法或列表法重写matlab中conv这个函数

%列表法
function C = task1(A,B)
C = zeros(1,length(A) + length(B) - 1);

for i = 1:length(A)
    C = C + [zeros(1,i-1),A(i)*B,zeros(1,length(A)-i)];
end


%卷积法
LA = length(A);
LB = length(B);

C = zeros(1, LA + LB - 1);

for n = 1:(LA + LB - 1)
    for k = 1:LA
        
        j = n - k + 1;
        C(n) = C(n) + A(k) * B(j);
            
        end
        
    end
end

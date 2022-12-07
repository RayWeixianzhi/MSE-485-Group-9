filename1 = 'C2.xlsx';
filename2 = 'C4.xlsx';
filename3 = 'C6.xlsx';
filename4 = 'C8.xlsx';
A = readmatrix(filename1);
B = readmatrix(filename2);
C = readmatrix(filename3);
D = readmatrix(filename4);
time = linspace(0,50,length(A))
for i = 1:width(A)
    if A(1,i)<0
        for k = 1:length(A)
            if A(k,i) > 0
                A(k,i)=A(k,i)*-1
            end
        end
    elseif A(1,i) > 0
        for k = 1:length(A)
            if A(k,i) < 0
                A(k,i)=A(k,i)*-1
            end
        end
    end
end
for i = 1:width(B)
    if B(1,i)<0
        for k = 1:length(B)
            if B(k,i) > 0
                B(k,i)=B(k,i)*-1
            end
        end
    elseif B(1,i) > 0
        for k = 1:length(B)
            if B(k,i) < 0
                B(k,i)=B(k,i)*-1
            end
        end
    end
end
for i = 1:width(C)
    if C(1,i)<0
        for k = 1:length(C)
            if C(k,i) > 0
                C(k,i)=C(k,i)*-1
            end
        end
    elseif C(1,i) > 0
        for k = 1:length(C)
            if C(k,i) < 0
                C(k,i)=C(k,i)*-1
            end
        end
    end
end
for i = 1:width(D)
    if D(1,i)<0
        for k = 1:length(D)
            if D(k,i) > 0
                D(k,i)=D(k,i)*-1
            end
        end
    elseif D(1,i) > 0
        for k = 1:length(D)
            if D(k,i) < 0
                D(k,i)=D(k,i)*-1
            end
        end
    end
end
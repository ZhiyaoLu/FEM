function K = processConstraintSparse(K, bound)
% 这个函数对K进行处理，使其满足约束
% 输入：
%      整体劲度矩阵 K
%      其他可能用到的参数
%      请自行补充
% 输出：
%      处理后的 K


for i = 1 : size(bound,1);
    element_num = bound(i, 1);
    x_or_y = bound(i, 2);
    j = element_num * 2 - 2 + x_or_y;
    % K(i,j) 相当于 Ak(Ind(i) - (i - j))
    K(j, j) = K(j, j) * (1 / eps)^2;
end

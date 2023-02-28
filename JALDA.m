function [acc,acc_iter,P1,P2,obj_value ] = JALDA(X_src,Y_src,X_tar,Y_tar,options )

% This is the implementation of Joint Distribution Adaptation.
% Reference: Mingsheng Long et al. Transfer feature learning with joint distribution adaptation.ICCV 2013.

% Inputs:
%%% X_src          :     source feature matrix, ns * n_feature
%%% Y_src          :     source label vector, ns * 1
%%% X_tar          :     target feature matrix, nt * n_feature
%%% Y_tar          :     target label vector, nt * 1

% Outputs:
%%% acc            :     final accuracy using knn, float
%%% acc_iter       :     list of all accuracies during iterations
%%% A              :     final adaptation matrix, (ns + nt) * (ns + nt)

% Set options
alfa = options.alfa;
beta = options.beta;
gamma = options.gamma;
T = options.T;                     %% iteration number, T >= 1. T <= 10 is suffice
%initiate
[d,ns] = size(X_src);
[d,nt] = size(X_tar);

acc_iter = [];
Y_tar_pseudo = Y_tar;
% % Iteration
Options = [];
Options.ReducedDim =100;
[Pt2,~]=PCA1(X_tar',Options);
[Ps1,~]=PCA1(X_src',Options);
Z = ones(ns,nt);
v=sqrt(sum(Z.*Z,2));
G = diag(0.5./(v));
I1 = eye(d);
I2 = eye(d);
for i = 1 : T
%LDA
regu = 10^-5;
[Sw_s, Sb_s] = ScatterMat(X_src,Y_src);
Ls = Sw_s-regu*Sb_s;
[Sw_t,Sb_t] = ScatterMat(X_tar,Y_tar_pseudo);
Lt = Sw_t-regu*Sb_t;
  %Update P2
    if (i == 1)
        P2 = Pt2;
        P1 = Ps1;
    else
        P2 = (Lt+alfa*X_tar*X_tar'+beta*eye(d))\(beta*P1+alfa*X_tar*Z'*X_src'*P1);
    end
    %Update P1
        P1 = (Ls+alfa*X_src*Z*Z'*X_src'-beta*eye(d))\(alfa*X_src*Z*X_tar'*P2-beta*P2);
    %Update Z
    Z = (alfa*X_src'*P1*P1'*X_src+gamma*G)\(alfa*X_src'*P1*P2'*X_tar);
    %Update G
    G = diag(sparse(1./(sqrt(sum(Z.^2,2)+eps))));
    
    Zs= P1'*X_src;
    Zs = normalization(Zs,1);
    Zt= P1'*X_tar;
    Zt = normalization(Zt,1);
    model= svmtrain(Y_src,Zs','-s 0 -t 0 -c 1 -g 1 ');
    [ Y_tar_pseudo, acc,~] = svmpredict(Y_tar,Zt',model);
%     acc(1) = length(find(Y_tar_pseudo==Y_tar))/length(Y_tar); 
%     fprintf('JDA+NN=%0.4f\n',acc);
    acc_iter = [acc_iter;acc];
    obj_1 = trace(P1'*Ls*P1)+trace(P2'*Lt*P2);
    obj_2 =  alfa*trace(Z'*X_src'*X_src*Z-Z'*X_src'*P1*P2*X_tar-X_tar'*P2*P1'*X_src*Z+X_tar'*X_tar);
    obj_3 = beta*trace(eye(d)-P1'*P2-P2'*P1+eye(d));
    obj_value(i) =int32(obj_1 + obj_2 + obj_3);
end

end




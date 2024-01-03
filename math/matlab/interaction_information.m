function I = interaction_information(X,Y,Z)
%INTERACTION_INFORMATION    Calculate interaction information in bits.
%
%   I = INTERACTION_INFORMATION(X,Y,Z) calculates the information 
%   I(X;Y;Z) in bits.  This is defined as:
%       I(X;Y;Z) = H(X) + H(Y) + H(Z)...
%                   - H(X,Y) - H(X,Z) - H(Y,Z)...
%                   + H(X,Y,Z)
I = entropy(X) + entropy(Y) + entropy(Z)...
    - joint_entropy([X Y]) - joint_entropy([X Z]) - joint_entropy([Y Z])...
    + joint_entropy([X Y Z]);
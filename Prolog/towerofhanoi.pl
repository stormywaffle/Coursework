/**
*The first version of move is the base case. The other recursively calls move to solve the tower of hanoi puzzle
*/
move(1,X,Y,_) :-  
    write('Move disk from '), 
    write(X), 
    write(' to '), 
    write(Y), 
    nl. 
move(N,X,Y,Z) :- 
    N > 1, 
    M is N - 1, 
    move(M,X,Z,Y), 
    move(1,X,Y,_), 
    move(M,Z,Y,X).  
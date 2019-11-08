% Default
#const g=3.

%defining 1D grid
grid(X, Y) :- X=(1..g), Y=(1..g).

%filling grid with values from 1 to v
{ sudoku(X,Y,1..g) } =1 :- grid(X, Y).

% Constraints: not allowed to have repeated values in the same row.
:- sudoku(X,A,V), sudoku(X,B,V), A!=B.

% Constraints: not allowed to have repeated values in the same col.
:- sudoku(A,X,V), sudoku(B,X,V), A!=B.

% to-do: sub tables


% Remove models that do not contain the initial/3 facts that we know.

:- not sudoku(R,C,V), initial(R,C,V).


#show sudoku/3. 

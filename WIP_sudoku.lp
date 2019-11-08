% The constant g represents the size of the grid.
#const g=3.

% Defining a g-by-g grid
grid(X,Y) :- X=(1..g), Y=(1..g).

% Filling grid with values from 1 to g
{ sudoku(X,Y,1..g) } = 1 :- grid(X,Y).

% Constraint: Not allowed to have repeated values in the same row.
:- sudoku(X,A,V), sudoku(X,B,V), A!=B.

% Constraint: Not allowed to have repeated values in the same col.
:- sudoku(A,X,V), sudoku(B,X,V), A!=B.

% TODO: 
% Constraint: Not allowed to have repeated values in the same sub-grid.
% Hints [from assignment template]:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)


% Constraint: Remove models that do not contain the initial/3 facts that we know.
% This leaves only the solutions that are compatible with the partially filled board.
:- not sudoku(R,C,V), initial(R,C,V).

#show sudoku/3.

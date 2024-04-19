% Define a predicate to simulate a for loop
for(Start, End, _) :-
    Start > End.  % Base case: Stop when Start exceeds End

for(Start, End, Goal) :-
    Start =< End,     % Continue if Start is less than or equal to End
    call(Goal),       % Execute the goal
    Next is Start + 1,  % Increment the counter
    for(Next, End, Goal).  % Recursively call for the next iteration

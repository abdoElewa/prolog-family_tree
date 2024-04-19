:- initialization(loop_entry).

loop_entry :-
    repeat,
    writeln('1-> Ask relation'),
    writeln('2-> Add/Delete/Update person'),
    writeln('3-> Get information of any person'),
    writeln('4-> Print the family tree'),
    writeln('5-> Control under 18 age marriage'),
    writeln('6-> Determine inheritance'),
    writeln('7-> Exit'),
    nl,
    writeln('Please choose an operation!'),
    read(Buff),
    processChoice(Buff),
    Buff =:= 7, !.

processChoice(1) :-
    % Code for operation 1 (Ask relation)
    writeln('Operation 1 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(2) :-
    % Code for operation 2 (Add/Delete/Update person)
    writeln('Operation 2 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(3) :-
    % Code for operation 3 (Get information of any person)
    writeln('Operation 3 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(4) :-
    % Code for operation 4 (Print the family tree)
    writeln('Operation 4 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(5) :-
    % Code for operation 5 (Control under 18 age marriage)
    writeln('Operation 5 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(6) :-
    % Code for operation 6 (Determine inheritance)
    writeln('Operation 6 selected'),
    % Call your predicate for this operation here
    loop_entry. % Return to the main menu

processChoice(7) :-
    writeln('Exiting...').

% Add more processChoice clauses for additional operations if needed

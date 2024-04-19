:-initialization(loop_entry).

loop_entry:-
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
    Buff=:= 7, !.

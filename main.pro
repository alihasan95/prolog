% Copyright

implement main
    open core

class predicates
len:(integer_list,integer).

clauses
len([],X):-stdio::write(X),!.
len([H|L],X):-X1=X+1,len(L,X1).

clauses
    run() :-console::init(),
    len([1,2,3,4,5,6],0),
    stdio::write(),
    fail.
    run().


end implement main

goal
    console::runUtf8(main::run).
PutTwo = First_.Second_.(
	PipeFn[print_second.(PutStrln[Second_])][
		PipeFn[print_first.(PutStr[First_])][Second_]
	]
)

PutThree = _First_._Second_._Third_.(
	PipeFn[print_third.(PutStrln[_Third_])][
	        PipeFn[print_second.(PutStr[_Second_])][
        	        PipeFn[print_first.(PutStr[_First_])][_Second_]
        	][_Third_]
	]
)

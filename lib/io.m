Clear = pass.(PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[""]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]])

PutTwo = First_.Second_.(
	PipeFn[print_second.(PutStrln[Second_])][
		PipeFn[print_first.(PutStr[First_])][Second_]
	]
)

PutTwoln = First_.Second_.(
	PipeFn[print_second.(PutStrln[Second_])][
		PipeFn[print_first.(PipeFn[pass.(PutStrln[""])][PutStrln[First_]])][Second_]
	]
)

PutThree = _First_._Second_._Third_.(
	PipeFn[print_third.(PutStrln[_Third_])][
	        PipeFn[print_second.(PutStr[_Second_])][
        	        PipeFn[print_first.(PutStr[_First_])][_Second_]
        	][_Third_]
	]
)

PutFour = _First_._Second_._Third_._Fourth_.(
	PipeFn[print_fourth.(PutStrln[_Fourth_])][
		PipeFn[print_third.(PutStr[_Third_])][
			PipeFn[print_second.(PutStr[_Second_])][
				PipeFn[print_first.(PutStr[_First_])][_Second_]
			][_Third_]
		][_Fourth_]
	]
)

PutFive = _First_._Second_._Third_._Fourth_._Fifth_.(
	PipeFn[print_fourth.(PutStrln[_Fifth_])][
		PipeFn[print_fourth.(PutStr[_Fourth_])][
			PipeFn[print_third.(PutStr[_Third_])][
				PipeFn[print_second.(PutStr[_Second_])][
					PipeFn[print_first.(PutStr[_First_])][_Second_]
				][_Third_]
			][_Fourth_]
		][_Fifth_]
	]
)

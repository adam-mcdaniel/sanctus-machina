Clear = pass.(PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[PutStrln[""]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]])

PutTwo = First_.Second_.(
	PipeFn[print_second.(PutStrln[Second_])][
		PipeFn[print_first.(PutStr[First_])][Second_]
	]
)

PutThree = A.B.C.(
	PipeFn[pass.(PutTwo[B][C])][PutStr[A]]
)

PutFour = A.B.C.D.(
	PipeFn[pass.(PutThree[B][C][D])][PutStr[A]]
)

PutFive = A.B.C.D.E.(
	PipeFn[pass.(PutFour[B][C][D][E])][PutStr[A]]
)

Check = Check_A.Check_B.(
	If[Eq[Check_A][Check_B]][
		"GOOD"
	][
		"ERR"
	]
)

PutTwo["=[ Interpreter Check 1 ]===[ TRUE ]==> "][ Check[True["a"]["b"]]["a"] ]
PutTwo["=[ Interpreter Check 2 ]===[ FALSE ]=> "][ Check[False[False["a"]["b"]][False["c"]["d"]]]["d"] ]
PutTwo["=[ Interpreter Check 3 ]===[ AND ]===> "][ Check[And[True][And[False][True]]][False] ]
PutTwo["=[ Interpreter Check 4 ]===[ OR ]====> "][ Check[Or[True][Or[False][True]]][True] ]
PutTwo["=[ Interpreter Check 5 ]===[ IF ]====> "][ Check[If[False]["a"]["b"]]["b"] ]

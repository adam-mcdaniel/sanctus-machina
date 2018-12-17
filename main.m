Import["lib/nums"]
Import["lib/io"]
Import["lib/cmd"]
Import["lib/time"]
Import["lib/programs"]


WaitTime = 0


UniversalCommands = Directory.User.(
	If[Eq[User] ["help"]][
		pass.(PipeFn[pass.(PutTwoln["Commands: [cd clear exit help ls pwd]"]["There is nothing but yourself; nothing can prove what you feel or see to be true. All you can ever know is that you are. Use your own intuition on your pilgrimage. Reach the end and find yourself."])][Directory])
	][
	If[Eq[User] ["pwd"]][
		pass.(PipeFn[pass.(PutStrln[Directory])][Directory])
	][
	If[Eq[User] ["exit"]][
		pass.(PipeFn[pass.(PutStrln["Exiting..."])][Break[_]])
	][
	If[Eq[User] ["clear"]][
		pass.(PipeFn[pass.(Clear[_])][Directory])
	][
		pass.(Directory)
	]]]]
)


IsUniversalCommand = User.(
	Or[Eq[User] ["help"]][Or[Eq[User] ["pwd"]][Or[Eq[User] ["exit"]][Eq[User] ["clear"]]]]
)

InHome = User.(Eq[User]["primes"])

HomeDirectory = Directory.User.(
	If[IsUniversalCommand[User]][
		UniversalCommands[Directory][User]
	][
	If[Eq[User] ["primes"]][
		pass.(PipeFn[pass.(Primes[_])][Directory])
	][
	If[Eq[User] ["cd Documents"]][
		pass.("/Documents")
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln["Documents primes"])][Directory])
	][
	If[Not[InHome[User]]][
		pass.(PipeFn[pass.(PutFive["program: '"][User]["' not found in directory: '"][Directory]["'"])][Directory])
	][
		pass.(Directory)
	]]]]]
)


InDocuments = User.(Eq[User]["key"])

DocumentsDirectory = Directory.User.(
	If[IsUniversalCommand[User]][
		UniversalCommands[Directory][User]
	][
	If[Eq[User] ["cd .."]][
		pass.("/")
	][
	If[Eq[User] ["key"]][
		pass.(PipeFn[pass.(Key[_])][Directory])
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln[".. key"])][Directory])
	][
	If[Not[InDocuments[User]]][
		pass.(PipeFn[pass.(PutFive["program: '"][User]["' not found in directory: '"][Directory]["'"])][Directory])
	][
		pass.(Directory)
	]]]]]
)


Main = Directory.(
	User.(
		If[Eq[Directory]["/"]][
			HomeDirectory[Directory][User]
		][
		If[Eq[Directory]["/Documents"]][
			DocumentsDirectory[Directory][User]
		][
			Break
		]][_]
	)[GetCmd[_]]
)

PutStrln["Booting disk SANCTUSMACHINA..."]

Halt[WaitTime]

PutStrln["512 bytes read"]

Halt[WaitTime]

PutStrln["loaded kernel"]



Rec[Main]["/"]

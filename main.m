Import["lib/logging"]
Import["lib/nums"]
Import["lib/io"]
Import["lib/cmd"]
Import["lib/time"]
Import["lib/programs"]
Import["lib/tests"]


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
		pass.(PipeFn[pass.(PutFive["program: '"][User]["' not found in directory: '"][Directory]["'"])][Directory])
	]]]]
)


IsUniversalCommand = User.(
	Or[Eq[User] ["help"]][Or[Eq[User] ["pwd"]][Or[Eq[User] ["exit"]][Eq[User] ["clear"]]]]
)




RootDirectory = Directory.User.(
	If[Eq[User] ["cd home"]][
		pass.("/home")
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln["home"])][Directory])
	][
		UniversalCommands[Directory][User]
	]]]
)

HomeDirectory = Directory.User.(
	If[Eq[User] ["cd .."]][
		pass.("/")
	][
	If[Eq[User] ["cd Documents"]][
		pass.("/home/Documents")
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln[".. Documents"])][Directory])
	][
		UniversalCommands[Directory][User]
	]]]
)

DocumentsDirectory = Directory.User.(
	If[Eq[User] ["cd .."]][
		pass.("/home")
	][
	If[Eq[User] ["key"]][
		pass.(PipeFn[pass.(Key[_])][Directory])
	][
	If[Eq[User] ["primes"]][
		pass.(PipeFn[pass.(Primes[_])][Directory])
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln[".. key primes"])][Directory])
	][
		UniversalCommands[Directory][User]
	]]]]
)



Main = Directory.(
	User.(
		If[Eq[Directory]["/"]][
			RootDirectory[Directory][User]
		][
		If[Eq[Directory]["/home"]][
			HomeDirectory[Directory][User]
		][
		If[Eq[Directory]["/home/Documents"]][
			DocumentsDirectory[Directory][User]
		][
			Break
		]]][_]
	)[GetCmd[_]]
)

Info["Booting disk SANCTUSMACHINA..."]

Halt[WaitTime]

Info["512 bytes read"]

Halt[WaitTime]

Info["loaded kernel"]



Rec[Main]["/"]

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
		pass.(PutTwo["Commands: [cd clear exit help ls pwd]"]["There is nothing but yourself; nothing can prove what you feel or see to be true. All you can ever know is that you are. Use your own intuition on your pilgrimage. Reach the end and find yourself."])
	][
	If[Eq[User] ["pwd"]][
		pass.(PutStrln[Directory])
	][
	If[Eq[User] ["exit"]][
		pass.(PipeFn[Exit][PutStrln["Goodbye"]])
	][
	If[Eq[User] ["clear"]][
		pass.(Clear[_])
	][
		pass.(PutFive["program: '"][User]["' not found in directory: '"][Directory]["'"])
	]]]]
)


IsUniversalCommand = User.(
	Or[Eq[User] ["help"]][Or[Eq[User] ["pwd"]][Or[Eq[User] ["exit"]][Eq[User] ["clear"]]]]
)




RootDirectory = Directory.User.(
	If[Eq[User] ["cd home"]][
		pass.("/home")
	][
	If[Eq[User] ["cd log"]][
		pass.("/log")
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln["log home"])][Directory])
	][
		pass.(UniversalCommands[Directory][User][_])
	]]]
)


LogDirectory = Directory.User.(
	If[Eq[User] ["cd .."]][
		pass.("/")
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
		pass.(UniversalCommands[Directory][User][_])
	]]]]
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
		pass.(UniversalCommands[Directory][User][_])
	]]]
)

DocumentsDirectory = Directory.User.(
	If[Eq[User] ["cd .."]][
		pass.("/home")
	][
	If[Eq[User] ["ls"]][
		pass.(PipeFn[pass.(PutStrln[".."])][Directory])
	][
		pass.(UniversalCommands[Directory][User][_])
	]]
)



Main = Directory.(
	User.(
		If[Eq[Directory]["/"]]
			[RootDirectory][
		If[Eq[Directory]["/log"]]
			[LogDirectory][
		If[Eq[Directory]["/home"]]
			[HomeDirectory][
		If[Eq[Directory]["/home/Documents"]]
			[DocumentsDirectory]
			[pass.(Break)]]]]
		[Directory][User]
	)[GetCmd[_]][_]
)


PutTwo["=[ ROOT_DIR Check 1 ]======[ home ]=======> "][ Check[RootDirectory["/"]["cd home"][_]]["/home"] ]
PutTwo["=[ ROOT_DIR Check 2 ]======[ log ]========> "][ Check[RootDirectory["/"]["cd log"][_]]["/log"] ]
PutTwo["=[ LOG_DIR  Check 1 ]======[ log ]========> "][ Check[LogDirectory["/log"]["cd .."][_]]["/"] ]
PutTwo["=[ HOME_DIR Check 1 ]======[ Documents ]==> "][ Check[HomeDirectory["/home"]["cd .."][_]]["/"] ]
PutTwo["=[ HOME_DIR Check 2 ]======[ Documents ]==> "][ Check[HomeDirectory["/home"]["cd Documents"][_]]["/home/Documents"] ]



Debug["Booting disk SANCTUSMACHINA"]
Halt[WaitTime]
Debug["512 bytes read"]
Halt[WaitTime]
Debug["Loaded Kernel"]
Info["Booting to OS"]
Info["Finishing Up"]

Rec[Main]["/"]
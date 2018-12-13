Import["lib/io"]
Import["lib/cmd"]
Import["lib/nums"]
Import["lib/time"]


Main = State.(
	User.(
		If[Eq[User] ["help"]]
		[
			pass.(PipeFn[pass.(PutStrln["Commands: [help: displays this message]; [exit: exits shell]")][User])
		]
		[
			If[Eq[User] ["exit"]]
			[
				pass.(PipeFn[pass.(PutStrln["Exiting..."])][Break[_]])
			]
			[
				pass.(PipeFn[pass.(PutThree["COMMAND: '"][User]["' NOT FOUND"])]["invalid"])
			]
		][_]
	)[GetCmd[_]]
)

PutStrln["Booting sanctus machina..."]

Halt[9]

PutStrln["512 bytes read"]

Halt[9]

PutStrln["loaded kernel"]



Rec[Main][""]

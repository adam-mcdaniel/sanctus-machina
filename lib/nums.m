2 = Succ[1]
3 = Succ[2]
4 = Succ[3]
5 = Succ[4]
6 = Succ[5]
7 = Succ[6]
8 = Succ[7]
9 = Succ[8]
10 = Succ[9]
11 = Succ[10]
12 = Succ[11]


PrintNum = Num.(
    PipeFn[
        number.((number[PutStr]["."]))
    ][Num]
)

PrintNumln = num_ln.(
    Newln[PrintNum[num_ln]]
)

// PrintNumln[4]
// PrintNumln[
//     Add[4][
//         Add[4][4]
//         ]
// ]
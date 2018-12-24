Primes = any.(
    PutStrln[
        If[Eq[Prompt["Primes are the holiest of numbers. From them, all the composite numbers are born. Find the number that binds the primes together. The sum of the solution's digits is one fourth of the sum's value. Enter your answer: "]]["24"]]
            ["c81e728d9d4c2f636f067f89cc14862c"]
            ["Incorrect"]
    ]
)

Key = any.(
    PutStrln[
        If[Eq[Prompt["Enter your key: "]]["c81e728d9d4c2f636f067f89cc14862c"]]
            ["There is a prime number associated with this key. Find it."]
            ["Incorrect"]
    ]
)
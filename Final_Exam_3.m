syms A B C

eq1 = A + B + C == 89
eq2 = A == C - 6
eq3 = B == 3 * C

Answer = solve([eq1, eq2, eq3], [A, B, C])
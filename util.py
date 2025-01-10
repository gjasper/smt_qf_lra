def trim(expr):
    if expr[0] != '(':
        return expr
    if expr[len(expr) - 1] != ')':
        return expr

    bracket_count = 0
    for c in expr[:len(expr) - 1]:
        if c == '(':
            bracket_count += 1
        if c == ')':
            bracket_count -= 1
        if bracket_count == 0:
            return expr

    return expr[1:len(expr) - 1]


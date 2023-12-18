def factorial(n):
    result = 1
    for x in range(n, 0, -1):
        result *= x
    return result

# Пример использования
number = 5
result = factorial(number)
print(f"Факториал числа {number} равен {result}.")

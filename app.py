def add(x, y):
    return x + y


def subtract(x, y):
    return x - y


def multiply(x, y):
    return x * y


def divide(x, y):
    if y == 0:
        raise ValueError("Cannot divide by zero")
    return x / y


def calculator():
    operations = {
        "1": ("Add", add),
        "2": ("Subtract", subtract),
        "3": ("Multiply", multiply),
        "4": ("Divide", divide),
    }

    print("Select operation:")
    for key, (name, _) in operations.items():
        print(f"{key}. {name}")

    choice = input("Enter choice(1/2/3/4): ")

    if choice in operations:
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))
        operation_name, operation_func = operations[choice]

        try:
            result = operation_func(num1, num2)
            print(f"The result is: {result}")
        except ValueError as e:
            print(e)
    else:
        print("Invalid input")


if __name__ == "__main__":
    calculator()

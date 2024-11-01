#!/bin/bash

# Prompt user for two numbers and an operation type
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operation (add, subtract, multiply): " operation

# Perform the requested math operation
case $operation in
    "add")
        result=$((num1 + num2))
        echo "Result of addition: $result"
        ;;
    "subtract")
        result=$((num1 - num2))
        echo "Result of subtraction: $result"
        ;;
    "multiply")
        result=$((num1 * num2))
        echo "Result of multiplication: $result"
        ;;
    *)
        echo "Invalid operation selected."
        ;;
    "divide")
        if [ "$num2" -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result of division: $result"
        else
            echo "Cannot divide by zero."
        fi
        ;;
    *)
        echo "Invalid operation selected."
        ;;
esac

# Tax calculation based on salary
read -p "Enter your salary: " salary
if (( salary < 20000 )); then
    echo "No tax for salary below 20000."
elif (( salary <= 40000 )); then
    tax=$((salary * 5 / 100))
    echo "Tax is 5%: $tax"
else
    tax=$((salary * 10 / 100))
    echo "Tax is 10%: $tax"
fi

# Age categorization
read -p "Enter your age: " age
if (( age < 13 )); then
    echo "Child"
elif (( age <= 19 )); then
    echo "Teenager"
else
    echo "Adult"
fi

# Age categorization
read -p "Enter your age: " age
if (( age < 13 )); then
    echo "Child"
elif (( age <= 19 )); then
    echo "Teenager"
elif (( age > 60 )); then
    echo "Oldage"
else
    echo "Adult"
fi

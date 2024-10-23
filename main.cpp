#include <iostream>
#include "calculator.h"

int main() {
    double num1, num2;

    std::cout << "Введіть перше число: ";
    std::cin >> num1;
    std::cout << "Введіть друге число: ";
    std::cin >> num2;

    Calculator calc;  
    int resultAdd = calc.Add(num1, num2);  
    std::cout << "Результат +: " << resultAdd << std::endl;

    int resultSub = calc.Sub(num1, num2);  
    std::cout << "Результат -: " << resultSub << std::endl;

    return 0;
}

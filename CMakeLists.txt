cmake_minimum_required(VERSION 3.10)
project(calculator)

set(CMAKE_CXX_STANDARD 11)

#додати виконуваний файл
add_executable(calculator_app main.cpp)
#додати бібліотеку
add_library(calculator STATIC calculator.cpp)
#підключити бібліотеку до виконуваного файлу
target_link_libraries(calculator_app PRIVATE calculator)

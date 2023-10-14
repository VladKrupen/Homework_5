//
//  ViewController.swift
//  Homework_5
//
//  Created by Vlad on 14.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
// 1. Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций) (для int,double)

        func addition(_ firstNum: Int, _ secondNum: Int) -> Int {
            return firstNum + secondNum
        }

        func addition(_ firstNum: Double, _ secondNum: Double) -> Double {
            return firstNum + secondNum
        }


        func subtraction(_ firstNum: Int, _ secondNum: Int) -> Int {
            return firstNum - secondNum
        }

        func subtraction(_ firstNum: Double, _ secondNum: Double) -> Double {
            return firstNum - secondNum
        }


        func multiplication(_ firstNum: Int, _ secondNum: Int) -> Int {
            return firstNum - secondNum
        }

        func multiplication(_ firstNum: Double, _ secondNum: Double) -> Double {
            return firstNum * secondNum
        }


        func division(_ firstNum: Int, _ secondNum: Int) -> Int {
            return firstNum - secondNum
        }

        func division(_ firstNum: Double, _ secondNum: Double) -> Double {
            return firstNum * secondNum
        }

// 2. Вычислить сумму цифр четырехзначного числа

        
        func sumOfDigitsOfNumber(_ num: inout Int) -> Int {
            var sum: Int = 0
            while num > 0 {
                sum += num % 10
                num = num / 10
            }
            return sum
        }
        var number: Int = 1234
        print(sumOfDigitsOfNumber(&number))
        
        
// 3. Функция сравнения строк - "авб" больше "ввш"
        
        func stringComparison(_ firstString: String, _ secondString: String) -> String {
            switch firstString {
            case firstString where firstString > secondString:
                return "Строка \(firstString) больше строки \(secondString)"
            case firstString where firstString < secondString:
                return "Строка \(firstString) меньше строки \(secondString)"
            default:
                return "Строки равны"
            }
        }

        print(stringComparison("авб", "ввш"))
        
        
// 4. Циклический вызов функций - поломать приложение
        
        func factorial(_ num: Int) -> Int {
            if num == 0 {
                return 1
            }
            return num * factorial(num - 1)
        }
        print(factorial(7))
        
        
// 5. Функция возведения в степень с дефолтным параметром
        
        func exponentiation(num: inout Int, degree: Int = 2) -> Int {
            var count: Int = 0
            while count != degree - 1 {
                num *= num
                count += 1
            }
            return num
        }

        var numberSecond: Int = 7
        print(exponentiation(num: &numberSecond))


        
        
        
        
        
        
        
        
        
        
    }


}


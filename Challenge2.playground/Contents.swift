// Идентичны ли две строки между собой
// функция принимает две строки и возвращает true, если символы одинaковые, их порядок не важен

// check_1
import UIKit
func check1(string1: String, string2: String) -> Bool {
    var checkString = string2
    for letter in string1 {
        if let index = checkString.firstIndex(of: letter) {
            checkString.remove(at: index)
        }
        else {
            return false
        }
    }
    return checkString.count == 0
}
check1(string1: "ababa", string2: "ababa")
check1(string1: "sade", string2: "sades")

// check_2
// sorted сортирует массив по возрастанию(числа), по алфавиту(буквы) = пузырьковая
func check2(string3: String, string4: String) -> Bool {
    return string3.sorted() == string4.sorted()
}

check2(string3: "A1 B3 ", string4: "B3 A1")
check2(string3: "  z 1f", string4: " 1z  f")

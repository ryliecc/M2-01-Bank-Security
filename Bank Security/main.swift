import Foundation

print("Hello, World!")


// Aufgabe 2.4 Recherche über print()

// 1. Verständnisfrage: Was bedeutet separator und wie kannst du einen eigenen schreiben? Sorge zB dafür dass beim Aufruf von print("Hallo","Welt") nicht Hallo Welt ausgedruckt wird, sondern zB Hallo... Welt

print("Hallo","Welt", separator: "... ")

/* 2. Verständnisfrage:     Was bedeutet terminator und wie kannst du einen eigenen schreiben? Sorge zB dafür, dass beim Aufruf von

print("Hallo")
print("Welt")
 
nicht

Hallo
Welt
 
sondern zB
 
Hallo Welt

 gedruckt wird. Dazu müssen die print-Aufrufe etwas verändert werden. */

print("Hallo", terminator: " ")
print("Welt")

// Aufgabe 2.5 Währungswechsel

print("The current balance is \(balance.formatted(.number.precision(.fractionLength(2)))) €.")
print("The current balance is \(convertCurrency(eurBalance: balance, exchangeRate: exchangeRateUsd).formatted(.number.precision(.fractionLength(2)))) $.")
print("The current balance is \(convertCurrency(eurBalance: balance, exchangeRate: exchangeRateGbp).formatted(.number.precision(.fractionLength(2)))) £.")
print("The current balance is \(convertCurrency(eurBalance: balance, exchangeRate: exchangeRateJpy).formatted(.number.precision(.fractionLength(2)))) ¥.")

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

print("The current balance is \(convertCurrency(exchangeRateEur)) €.")
print("The current balance is \(convertCurrency(exchangeRateUsd)) $.")
print("The current balance is \(convertCurrency(exchangeRateGbp)) £.")
print("The current balance is \(convertCurrency(exchangeRateJpy)) ¥.")


// Aufgabe 2.6 Datum abspeichern
// 2.6.1. Variablen definieren

let day: Int = 21
let month: Int = 1
let year: Int = 1999

// 2.6.2. DateComponents verwenden

var dateComponents = DateComponents(year: year, month: month, day: day)
print(dateComponents)

// 2.6.3 Datum generieren

let calendar = Calendar.current
let currentDate = Date()
dateComponents = calendar.dateComponents([.year, .month, .day], from: currentDate)

print(dateComponents)

// 2.6.4 Datum formatieren

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .none

var formattedDate = dateFormatter.string(from: currentDate)
print(formattedDate)

dateFormatter.dateStyle = .long
dateFormatter.timeStyle = .medium
formattedDate = dateFormatter.string(from: currentDate)
print(formattedDate)

// Aufgabe 3.1 Kontoberechnungen durchführen

account.balance += 250.00
print("The account balance is now \(account.balance) €.")
account.balance -= 120.00
print("The account balance is now \(account.balance) €.")
let halfBalance: Double = account.balance / 2
print("Half of the account balance is \(halfBalance) €.")
let restMoney: Int = 55 % 10
print("If 55€ are being withdrawn from an ATM that only stores 10€ bills \(restMoney)€ will remain on the account.")

// Aufgabe 3.2 Daten konvertieren

var amountInt: Int = 500
var amountDouble: Double = Double(amountInt)
var balanceInCents: Int = Int(account.balance * 100)
var accountNumberString: String = String(account.accountNumber)

// Aufgabe 3.4 Kontogebühren & Zinsen

let accountFee: Double = 5
account.balance -= accountFee
print("After paying the account fee the account balance is \(account.balance) €.")

var interestRate: Double = 0.05
let interest: Double = account.balance * interestRate
account.balance += interest
print("After adding interest rates the account balance is \(account.balance) €.")

// Aufgabe 3.5 Kreditrahmen

var creditCardLimit: Int = 1000
print("Please enter your current debit.")
var currentDebit: Double = Double(readLine()!)!
var limitUsedPercentage: Double = currentDebit / Double(creditCardLimit) * 100

print("The current debit is \(currentDebit.formatted(.number.precision(.fractionLength(2))))€, which means that the credit card limit of \(creditCardLimit.formatted(.number.precision(.fractionLength(2))))€ is used up by \(limitUsedPercentage.formatted(.number.precision(.fractionLength(2))))%.")

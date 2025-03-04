//
//  Account1.swift
//  Bank Security
//
//  Created by Rylie Castell on 04.03.25.
//

import Foundation

// Aufgabe 2.1 Nutzerdaten speichern

var name: String = "Beate Beispiel"
var age: Int = 39
var isAdult: Bool = true
var adressTown: String = "Berlin"
var adressStreet: String = "Breite Straße"
var adressHouseNumber: String = "123"
var email: String = "beate.beispiel@example.com"
var phoneNumber: String = "+49123456789"


// Aufgabe 2.2 Kontodaten

var bankName: String = "Beispielbank Deutschland"
var bankTown: String = "Berlin"
var accountNumber: String = "12345678"
var iban: String = "DE 1234 5678 9101 1213"
var pin: String = "1234"
var accountSuspended: Bool = false
var balance: Double = 1530.40

// Aufgabe 2.3 Metadaten

let userId: UUID = UUID()
var creditRating: Int = 750
var amountLastWithdraw: Double = -100.00

// Aufgabe 2.5 Währungswechsel

let exchangeRateEur: Double = 1.00
var exchangeRateUsd: Double = 1.12
var exchangeRateGbp: Double = 0.85
var exchangeRateJpy: Double = 133.15

func convertCurrency(_ exchangeRate: Double) -> String {
    let exchangedBalance: Double = balance * exchangeRate
    return exchangedBalance.formatted(.number.precision(.fractionLength(2)))
}

// Test Änderung für Terminal Nutzung

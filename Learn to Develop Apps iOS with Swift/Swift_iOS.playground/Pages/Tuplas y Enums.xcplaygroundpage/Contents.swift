import Foundation

/** Tuplas y Enum **/


// MARK: Tuplas

let mailbox = ("Keepcoding", 10)
mailbox.0
mailbox.1

let mailboxAlias: (name:String, number: Int) = ("Keepcoding", 10)
mailboxAlias.name
mailboxAlias.number


// MARK: Enum

enum LetterType: CaseIterable {
    case love
    case business
    case family
    case friends
}

var letterType: LetterType = .family
letterType = .love

LetterType.allCases


enum Mailboxroperties {
    case capacity(Int)
    case adress(String)
}

var mailboxProperty = Mailboxroperties.capacity(100)
mailboxProperty = Mailboxroperties.adress("Puerta del Sol, Madrid")


enum LetterSizes: Int {
    case small = 10
    case medium
    case big
}

var letterSize = LetterSizes(rawValue: 25)
var letterSizeMedium = LetterSizes(rawValue: 11)


enum LetterNames: String {
    case initial = "Hello"
    case close = "Goodbye"
}

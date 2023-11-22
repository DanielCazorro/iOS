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

enum LetterType {
    case love
    case business
    case family
    case friends
    
}

var letterType: LetterType = .family
letterType = .love

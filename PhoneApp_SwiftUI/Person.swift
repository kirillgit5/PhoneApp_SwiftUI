//
//  Person.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import Foundation
struct Person : Identifiable {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    var id: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        var id = -1
        for index in 0..<names.count {
            id += 1
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phones[index],
                                id: id)
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

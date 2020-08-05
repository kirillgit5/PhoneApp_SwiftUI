//
//  PersonListView.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct PersonListView: View {
    
    // MARK : Private Property
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailPerson(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Persons List")
        }
    }
}

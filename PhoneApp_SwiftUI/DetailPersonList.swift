//
//  DetailPersonList.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct DetailPersonList: View {
    
    // MARK : Public Property
    let persons : [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        PersonRow(personInformation: person.phoneNumber, imageName: ImageName.phone.rawValue)
                        PersonRow(personInformation: person.email , imageName: ImageName.paperplane.rawValue)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Persons List")
        }
    }
}


//
//  DetailPerson.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct DetailPerson: View {
    
    // MARK : Public Property
    var person: Person
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Phone")
                Text(person.phoneNumber)
                Spacer()
            }
            HStack {
                Text("Email")
                Text(person.email)
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle(person.fullName)
    }
}



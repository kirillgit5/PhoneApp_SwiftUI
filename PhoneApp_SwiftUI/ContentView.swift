//
//  ContentView.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            PersonListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
            }
            DetailPersonList(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

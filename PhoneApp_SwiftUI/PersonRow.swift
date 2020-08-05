//
//  PersonRow.swift
//  PhoneApp_SwiftUI
//
//  Created by Кирилл Крамар on 05.08.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct PersonRow: View {
    
    var personInformation: String
    var imageName: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: imageName)
                .frame(width: 30, height: 30)
            Text(personInformation)
        }
    }
}


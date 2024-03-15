//
//  ContactDetailsRowView.swift
//  ContactList
//
//  Created by Tia M on 3/15/24.
//

import SwiftUI

struct ContactDetailsRowView: View {
    let contactData: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundStyle(Color(.blue))
            Text(contactData)
        }
    }
}

#Preview {
    if let contact = Person.getContactList().first {
        ContactDetailsRowView(contactData: contact.phoneNumber, image: "phone")
    } else {
        Text("No contacts available")
    }
}

//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person

    var body: some View {
        
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            ContactDetailsRowView(contactData: contact.phoneNumber, image: "phone")
            ContactDetailsRowView(contactData: contact.email, image: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    if let contact = Person.getContactList().first {
        ContactDetailsView(contact: contact)
    } else {
        Text("No contacts available")
    }
}

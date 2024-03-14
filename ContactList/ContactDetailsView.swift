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

            HStack {
                Image(systemName: "phone")
                    .foregroundStyle(Color(.blue))
                Text(contact.phoneNumber)
            }

            HStack {
                Image(systemName: "tray")
                    .foregroundStyle(Color(.blue))
                Text(contact.email)
            }
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

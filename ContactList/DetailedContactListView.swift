//
//  DetailedContactList.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

struct DetailedContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            Section(contact.fullName) {
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
        }
        .navigationTitle("Contact List")
        .listStyle(.plain)
    }
        
}

#Preview {
    DetailedContactListView(contacts: Person.getContactList())
}

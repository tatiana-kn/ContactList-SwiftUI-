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
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    ContactDetailsRowView(contactData: contact.phoneNumber, image: "phone")
                    ContactDetailsRowView(contactData: contact.email, image: "tray")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

#Preview {
    DetailedContactListView(contacts: Person.getContactList())
}

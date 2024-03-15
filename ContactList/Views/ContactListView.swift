//
//  ContactListView.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: ContactDetailsView(contact: contact)) {
                Text(contact.fullName)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
}

#Preview {
    ContactListView(contacts: Person.getContactList())
}

//
//  ContentView.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            DetailedContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}

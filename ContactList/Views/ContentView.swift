//
//  ContentView.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    let contacts: [Person]
    
    var body: some View {
        TabView {
            NavigationStack {
                ContactListView(contacts: contacts)
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Contacts")
            }
            
            NavigationStack {
                DetailedContactListView(contacts: contacts)
            }
            .tabItem {
                Image(systemName: "phone.fill")
                Text("Numbers")
            }
        }
    }
}

#Preview {
    ContentView(contacts: Person.getContactList())
}

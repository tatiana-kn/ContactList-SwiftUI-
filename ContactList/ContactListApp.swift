//
//  ContactListApp.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contacts: Person.getContactList())
        }
    }
}

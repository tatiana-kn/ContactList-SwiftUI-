//
//  DataStore.swift
//  ContactList
//
//  Created by Tia M on 3/14/24.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
        
    let names = [
        "John",
        "Jack",
        "Alice",
        "Kate",
        "Tim",
        "Emily",
        "Aileen",
        "Jen",
        "Ted",
        "Bret"
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Epps",
        "Benoit",
        "Kahan",
        "Wright",
        "Black",
        "Darby",
        "Cohen",
        "Wise"
    ]
    
    let emails = [
        "aaa@gmail.com",
        "sss@gmail.com",
        "ddd@gmail.com",
        "fff@gmail.com",
        "ggg@gmail.com",
        "ttt@gmail.com",
        "xxx@gmail.com",
        "ooo@gmail.com",
        "eee@gmail.com",
        "yyy@gmail.com"
    ]
    
    let phones = [
        "0123456",
        "2345678",
        "3456789",
        "4567890",
        "5678900",
        "0987650",
        "9876545",
        "8765435",
        "7655434",
        "6543210"
    ]
    
    private init() {}
}

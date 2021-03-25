//
//  ContactStore.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import Foundation
import SwiftUI

class ContactStore: ObservableObject {
    @Published var contacts: [Contact]
    
    init(contacts: [Contact] = []) {
        
        // List of contacts is empty
        self.contacts = []
        
        // If no contacts were given, add some test data
        if contacts.isEmpty {
            // Add sample data
            self.contacts.append(contentsOf: [
                Contact(name: "Moonshadow", picture: "😾", nickname: "Moony", description: "My cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat"),
                Contact(name: "Magnus", picture: "😺", nickname: "Maggie", description: "Another cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat"),
                Contact(name: "Zephyr", picture: "🐱", nickname: "Zephyr", description: "Another cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat")
            ])
        } else {
            // Otherwise initialize with list of contacts provided
            self.contacts = contacts
        }
    }
}



let testStore = ContactStore(contacts: sampleContacts)

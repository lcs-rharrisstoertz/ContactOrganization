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
        self.contacts = contacts
    }
}

let testStore = ContactStore(contacts: sampleContacts)

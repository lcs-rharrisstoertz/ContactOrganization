//
//  ContactOrganizationApp.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

@main
struct ContactOrganizationApp: App {
    
    // Create the source of truth
    @StateObject private var contactsStore = ContactStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: contactsStore)
        }
    }
}

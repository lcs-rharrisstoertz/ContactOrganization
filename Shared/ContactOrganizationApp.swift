//
//  ContactOrganizationApp.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

@main
struct ContactOrganizationApp: App {
    
    @StateObject private var friendsStore = ContactStore()
    @StateObject private var familyStore = ContactStore()
    @StateObject private var workStore = ContactStore()
    @StateObject private var otherStore = ContactStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(familyStore: friendsStore, friendStore: familyStore, workStore: workStore, otherStore: otherStore)
        }
    }
}

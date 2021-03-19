//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: ContactStore
    
    @State private var showingAddContact = false
    
    var body: some View {
        
        NavigationView {
            
            List(store.contacts) {contact in
                ContactListView (contact: contact)
            }
            .navigationTitle ("Contacts")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button("New contact") {
                        showingAddContact = true
                    }
                }
            }
            .sheet(isPresented: $showingAddContact) {
                AddContact(store:store, showing: $showingAddContact)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}

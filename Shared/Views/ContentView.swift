//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//
// used tutorial from https://www.hackingwithswift.com/quick-start/swiftui/adding-swipe-to-delete-and-editbutton

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: ContactStore
    
    @State private var showingAddContact = false
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(store.contacts) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact, store: store)) {
                        ContactListView(contact: contact)
                    }
                }
                .onDelete(perform: deleteItems)
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
    func deleteItems(at offsets: IndexSet) {
        testStore.contacts.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}

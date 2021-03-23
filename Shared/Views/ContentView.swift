//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//
// used tutorial from https://www.hackingwithswift.com/quick-start/swiftui/adding-swipe-to-delete-and-editbutton
// and another tutorial from https://www.hackingwithswift.com/example-code/arrays/how-to-sort-an-array-using-sort


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
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("New contact") {
                        showingAddContact = true
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
            }
            .sheet(isPresented: $showingAddContact) {
                AddContact(store:store, showing: $showingAddContact)
            }
        }
        .onAppear() {
            store.contacts = store.contacts.sorted {
                $0.name < $1.name
            }
        }
        
    }
    func deleteItems(at offsets: IndexSet) {
        store.contacts.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}

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
    
    @ObservedObject var familyStore: ContactStore
    @ObservedObject var friendStore: ContactStore
    @ObservedObject var workStore: ContactStore
    @ObservedObject var otherStore: ContactStore
    
    @State private var showingAddContact = false
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(familyStore.contacts) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact, store: familyStore)) {
                        ContactListView(contact: contact)
                    }
                }
                .onDelete(perform: deleteFamilyItems)
            }
            List {
                ForEach(friendStore.contacts) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact, store: friendStore)) {
                        ContactListView(contact: contact)
                    }
                }
                .onDelete(perform: deleteFriendItems)
            }
            List {
                ForEach(workStore.contacts) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact, store: workStore)) {
                        ContactListView(contact: contact)
                    }
                }
                .onDelete(perform: deleteWorkItems)
            }
            List {
                ForEach(otherStore.contacts) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact, store: otherStore)) {
                        ContactListView(contact: contact)
                    }
                }
                .onDelete(perform: deleteOtherItems)
            }
            .navigationTitle("Contacts")
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
                AddContact(familyStore: familyStore, friendStore: friendStore, workStore: workStore, otherStore: otherStore, showing: $showingAddContact)
            }
        }
        .onAppear() {
            familyStore.contacts = familyStore.contacts.sorted {
                $0.name < $1.name
            }
            friendStore.contacts = friendStore.contacts.sorted {
                $0.name < $1.name
            }
            workStore.contacts = workStore.contacts.sorted {
                $0.name < $1.name
            }
            otherStore.contacts = otherStore.contacts.sorted {
                $0.name < $1.name
            }
        }
    }
    func deleteFamilyItems(at offsets: IndexSet) {
        familyStore.contacts.remove(atOffsets: offsets)//not good abstraction to have these 4 functions- I should find a way to turn this into one function
    }
    func deleteFriendItems(at offsets: IndexSet) {
        friendStore.contacts.remove(atOffsets: offsets)
    }
    func deleteWorkItems(at offsets: IndexSet) {
        workStore.contacts.remove(atOffsets: offsets)
    }
    func deleteOtherItems(at offsets: IndexSet) {
        otherStore.contacts.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(familyStore: testStore, friendStore: testStore, workStore: testStore, otherStore: testStore)
    }
}

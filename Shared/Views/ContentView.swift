//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//
// used tutorial from https://www.hackingwithswift.com/quick-start/swiftui/adding-swipe-to-delete-and-editbutton
// and another tutorial from https://www.hackingwithswift.com/example-code/arrays/how-to-sort-an-array-using-sort


//ideally I would use one view repeated 4 times rather than 4 chunks of near-identical code, but I don't currently have time

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var familyStore: ContactStore
    @ObservedObject var friendStore: ContactStore
    @ObservedObject var workStore: ContactStore
    @ObservedObject var otherStore: ContactStore
    
    @State private var showingAddContact = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Section(header: Text("Family")) {
                    List {
                        /*
                         This code iterates through the list of family contacts. For each contact, a view with a short preview of the contact is displayed. When clicked on, the user will be taken to another view containing more detailed information on the contact. The next three lists are similar, differing only in the contact type they display and affect.
                         Ideally, I would've turned this into 4 instances of the same reusable view to simplify the code, but I ran out of time.
                         */
                        ForEach(familyStore.contacts) { contact in
                            NavigationLink(destination: ContactInfo(contact: contact, store: familyStore)) {
                                ContactListView(contact: contact)
                            }
                        }
                        .onDelete(perform: deleteFamilyItems)
                    }
                }
                Section(header: Text("Friends")) {
                    List {
                        ForEach(friendStore.contacts) { contact in
                            NavigationLink(destination: ContactInfo(contact: contact, store: friendStore)) {
                                ContactListView(contact: contact)
                            }
                        }
                        .onDelete(perform: deleteFriendItems)
                    }
                }
                Section(header: Text("Work/School")) {
                    List {
                        ForEach(workStore.contacts) { contact in
                            NavigationLink(destination: ContactInfo(contact: contact, store: workStore)) {
                                ContactListView(contact: contact)
                            }
                        }
                        .onDelete(perform: deleteWorkItems)
                    }
                }
                Section(header: Text("Other")) {
                    List {
                        ForEach(otherStore.contacts) { contact in
                            NavigationLink(destination: ContactInfo(contact: contact, store: otherStore)) {
                                ContactListView(contact: contact)
                            }
                        }
                        .onDelete(perform: deleteOtherItems)
                    }
                }
            }
            .navigationTitle("Contacts")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("New contact") {
                        showingAddContact = true//when button is clicked, a view appears allowing the user to add a new contact
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
            }
            .sheet(isPresented: $showingAddContact) {
                AddContact(familyStore: familyStore, friendStore: friendStore, workStore: workStore, otherStore: otherStore, showing: $showingAddContact)//displays AddContact view
            }
        }
        .onAppear() {//when this view opens, all contacts are sorted in alphabetical order
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

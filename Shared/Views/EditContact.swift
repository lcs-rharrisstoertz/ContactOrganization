//
//  EditContact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-22.
//

import SwiftUI

import SwiftUI

struct EditContact: View {
    
    @ObservedObject var contact: Contact
    
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Group {
                        
                        Section(header: Text("new Name")) {
                            TextField("Name", text: $contact.name)
                        }
                        Section(header: Text("new Nickname")) {
                            TextField("Nickname", text: $contact.nickname)
                        }
                        Section(header: Text("new Description")) {
                            TextField("Description", text: $contact.description)
                        }
                        Section(header: Text("new Phone number")) {
                            TextField("Phone number", text: $contact.phoneNumber)
                        }
                        Section(header: Text("new Email")) {
                            TextField("Email", text: $contact.email)
                        }
                        Section(header: Text("new Facebook")) {
                            TextField("Facebook", text: $contact.facebook)
                        }
                        Section(header: Text("new Twitter")) {
                            TextField("Twitter", text: $contact.twitter)
                        }
                    }
                    Group {
                        Section(header: Text("new YouTube")) {
                            TextField("YouTube", text: $contact.youtube)
                        }
                        Section(header: Text("new Instagram")) {
                            TextField("Instagram", text: $contact.instagram)
                        }
                        Section(header: Text("new Snapchat")) {
                            TextField("Snapchat", text: $contact.snapchat)
                        }
                        Section(header: Text("new Tumblr")) {
                            TextField("Tumblr", text: $contact.tumblr)
                        }
                        Section(header: Text("new Reddit")) {
                            TextField("Reddit", text: $contact.reddit)
                        }
                        Section(header: Text("new TikTok")) {
                            TextField("TikTok", text: $contact.tiktok)
                        }
                        Section(header: Text("new information")) {
                            TextField("Other information", text: $contact.otherInfo)
                        }
                    }
                }
            }
            .navigationTitle("Edit Contact")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save changes"){
                        updateContact()
                        showing = false
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        showing = false
                    }
                }
            }
        }
    }
    
    func updateContact () {
        //update contact here
    }
    
}

//struct EditContact_Previews: PreviewProvider {
//    static var previews: some View {
//        EditContact(contact: testStore.contacts[0], store: testStore, showing: .constant(true))
//    }
//}

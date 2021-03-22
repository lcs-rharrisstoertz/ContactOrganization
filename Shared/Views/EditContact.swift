//
//  EditContact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-22.
//

import SwiftUI

import SwiftUI

struct EditContact: View {
    
    var contact: Contact
    
    @State private var name = ""
    @State private var picture = ""
    @State private var nickname = ""
    @State private var description = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var facebook = ""
    @State private var twitter = ""
    @State private var youtube = ""
    @State private var instagram = ""
    @State private var snapchat = ""
    @State private var tumblr = ""
    @State private var reddit = ""
    @State private var tiktok = ""
    @State private var otherInfo = ""
    
//    @State private var name = contact.name
//    @State private var picture = contact.picture
//    @State private var nickname = contact.nickname
//    @State private var description = contact.description
//    @State private var phoneNumber = contact.phoneNumber
//    @State private var email = contact.email
//    @State private var facebook = contact.facebook
//    @State private var twitter = contact.twitter
//    @State private var youtube = contact.youtube
//    @State private var instagram = contact.instagram
//    @State private var snapchat = contact.snapchat
//    @State private var tumblr = contact.tumblr
//    @State private var reddit = contact.reddit
//    @State private var tiktok = contact.tiktok
//    @State private var otherInfo = contact.otherInfo
    
    
    @ObservedObject var store: ContactStore
    
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Group {
                        
                        Section(header: Text("new Name")) {
                            TextField("Name", text: $name)
                        }
                        Section(header: Text("new Nickname")) {
                            TextField("Nickname", text: $nickname)
                        }
                        Section(header: Text("new Description")) {
                            TextField("Description", text: $description)
                        }
                        Section(header: Text("new Phone number")) {
                            TextField("Phone number", text: $phoneNumber)
                        }
                        Section(header: Text("new Email")) {
                            TextField("Email", text: $email)
                        }
                        Section(header: Text("new Facebook")) {
                            TextField("Facebook", text: $facebook)
                        }
                        Section(header: Text("new Twitter")) {
                            TextField("Twitter", text: $twitter)
                        }
                    }
                    Group {
                        Section(header: Text("new YouTube")) {
                            TextField("YouTube", text: $youtube)
                        }
                        Section(header: Text("new Instagram")) {
                            TextField("Instagram", text: $instagram)
                        }
                        Section(header: Text("new Snapchat")) {
                            TextField("Snapchat", text: $snapchat)
                        }
                        Section(header: Text("new Tumblr")) {
                            TextField("Tumblr", text: $tumblr)
                        }
                        Section(header: Text("new Reddit")) {
                            TextField("Reddit", text: $reddit)
                        }
                        Section(header: Text("new TikTok")) {
                            TextField("TikTok", text: $tiktok)
                        }
                        Section(header: Text("new information")) {
                            TextField("Other information", text: $otherInfo)
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
        contact.name = name
        contact.nickname = nickname
        contact.description = description
        contact.phoneNumber = phoneNumber
        contact.email = email
        contact.facebook = facebook
        contact.twitter = twitter
        contact.youtube = youtube
        contact.instagram = instagram
        contact.snapchat = snapchat
        contact.tumblr = tumblr
        contact.reddit = reddit
        contact.tiktok = tiktok
        contact.otherInfo = otherInfo
    }
    
}

struct EditContact_Previews: PreviewProvider {
    static var previews: some View {
        EditContact(contact: testStore.contacts[0], store: testStore, showing: .constant(true))
    }
}

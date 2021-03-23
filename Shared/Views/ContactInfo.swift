//
//  ContactInfo.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct ContactInfo: View {
    
    @State var contact: Contact
    
    @ObservedObject var store: ContactStore
    
    @State private var showingEditContact = false
    
    var body: some View {
        Form{
//            HStack{
//                Spacer()
//                Image(contact.picture)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 200)
//                Spacer()
//            }
            Group{
                if contact.nickname != "" {
                    Section(header: Text("Nickname")) {
                        Text(contact.nickname)
                    }
                }
                if contact.description != "" {
                    Section(header: Text("Description")) {
                        Text(contact.description)
                    }
                }
                if contact.phoneNumber != "" {
                    Section(header: Text("Phone number")) {
                        HStack {
                            Text(contact.phoneNumber)
                            Button(action: {
                                if let url = URL(string: "tel://\(contact.phoneNumber)") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.email != "" {
                    Section(header: Text("Email")) {
                        HStack {
                            Text(contact.email)
                            Button(action: {
                                if let url = URL(string: "mailto:\(contact.email)") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.facebook != "" {
                    Section(header: Text("Facebook")) {
                        HStack {
                            Text(contact.facebook)
                            Button(action: {
                                if let url = URL(string: "facebook.com/\(contact.facebook)/") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.twitter != "" {
                    Section(header: Text("Twitter")) {
                        HStack {
                            Text(contact.twitter)
                            Button(action: {
                                if let url = URL(string: "twitter.com/\(contact.twitter)/") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
            }
            Group{
                if contact.youtube != "" {
                    Section(header: Text("YouTube")) {
                        Text(contact.youtube)
                    }
                }
                if contact.instagram != "" {
                    Section(header: Text("Instagram")) {
                        HStack {
                            Text(contact.instagram)
                            Button(action: {
                                if let url = URL(string: "instagram.com/\(contact.instagram)/") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.snapchat != "" {
                    Section(header: Text("Snapchat")) {
                        HStack {
                            Text(contact.snapchat)
                            Button(action: {
                                if let url = URL(string: "snapchat.com/add/\(contact.snapchat)") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.tumblr != "" {
                    Section(header: Text("Tumblr")) {
                        HStack {
                            Text(contact.tumblr)
                            Button(action: {
                                if let url = URL(string: "\(contact.tumblr).tumblr.com") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.reddit != "" {
                    Section(header: Text("Reddit")) {
                        HStack {
                            Text(contact.reddit)
                            Button(action: {
                                if let url = URL(string: "reddit.com/user/\(contact.reddit)/") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text("Open")
                            })
                        }
                    }
                }
                if contact.tiktok != "" {
                    Section(header: Text("TikTok")) {
                        Text(contact.tiktok)
                    }
                }
                if contact.otherInfo != "" {
                    Section(header: Text("Other information")) {
                        Text(contact.otherInfo)
                    }
                }
            }
        }
        .navigationTitle(contact.name)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button("Edit contact") {
                    showingEditContact = true
                }
            }
        }
        .sheet(isPresented: $showingEditContact) {
            EditContact(contact: contact, showing: $showingEditContact)
        }
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContactInfo(contact: testStore.contacts[0], store: testStore)
        }
    }
}

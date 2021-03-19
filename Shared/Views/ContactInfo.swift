//
//  ContactInfo.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct ContactInfo: View {
    
    var contact: Contact
    
    @ObservedObject var store: ContactStore
    
    var body: some View {
        Form{
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
                        Text(contact.phoneNumber)
                    }
                }
                if contact.email != "" {
                    Section(header: Text("Email")) {
                        Text(contact.email)
                    }
                }
                if contact.facebook != "" {
                    Section(header: Text("Facebook")) {
                        Text(contact.facebook)
                    }
                }
                if contact.twitter != "" {
                    Section(header: Text("Twitter")) {
                        Text(contact.twitter)
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
                        Text(contact.instagram)
                    }
                }
                if contact.snapchat != "" {
                    Section(header: Text("Snapchat")) {
                        Text(contact.snapchat)
                    }
                }
                if contact.tumblr != "" {
                    Section(header: Text("Tumblr")) {
                        Text(contact.tumblr)
                    }
                }
                if contact.reddit != "" {
                    Section(header: Text("Reddit")) {
                        Text(contact.reddit)
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
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Delete"){
                    //i need to add code to delete contact here
                }
            }
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

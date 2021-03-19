//
//  ContactInfo.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct ContactInfo: View {
    
    var contact: Contact
    
    var body: some View {
        Form{
            Group{
                Section(header: Text("Nickname")) {
                    Text(contact.nickname)
                }
                Section(header: Text("Description")) {
                    Text(contact.description)
                }
                Section(header: Text("Phone number")) {
                    Text(contact.phoneNumber)
                }
                Section(header: Text("Email")) {
                    Text(contact.email)
                }
                Section(header: Text("Facebook")) {
                    Text(contact.facebook)
                }
                Section(header: Text("Twitter")) {
                    Text(contact.twitter)
                }
            }
            Group{
                Section(header: Text("YouTube")) {
                    Text(contact.youtube)
                }
                Section(header: Text("Instagram")) {
                    Text(contact.instagram)
                }
                Section(header: Text("Snapchat")) {
                    Text(contact.snapchat)
                }
                Section(header: Text("Tumblr")) {
                    Text(contact.tumblr)
                }
                Section(header: Text("Reddit")) {
                    Text(contact.reddit)
                }
                Section(header: Text("TikTok")) {
                    Text(contact.tiktok)
                }
                Section(header: Text("Other information")) {
                    Text(contact.otherInfo)
                }
            }
        }
        .navigationTitle(contact.name)
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContactInfo(contact: testStore.contacts[0])
        }
    }
}

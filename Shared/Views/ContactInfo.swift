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
        NavigationView {
            ScrollView{
                Group{
                    Text(contact.nickname)
                    Text(contact.description)
                    Text(contact.phoneNumber)
                    Text(contact.email)
                    Text(contact.facebook)
                    Text(contact.twitter)
                }
                Group{
                    Text(contact.youtube)
                    Text(contact.instagram)
                    Text(contact.snapchat)
                    Text(contact.tumblr)
                    Text(contact.reddit)
                    Text(contact.tiktok)
                    Text(contact.otherInfo)
                }
            }
        }
        .navigationTitle(contact.name)
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContactInfo(contact: testStore.contacts[0])
        }
    }
}

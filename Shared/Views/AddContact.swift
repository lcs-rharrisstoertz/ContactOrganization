//
//  AddContact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct AddContact: View {
    
    @ObservedObject var store: ContactStore
    
    @State private var name = ""
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
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Group {
                        TextField("Name", text: $name)
                        TextField("Nickname", text: $nickname)
                        TextField("Description", text: $description)
                        TextField("Phone number", text: $phoneNumber)
                        TextField("Email", text: $email)
                        TextField("Facebook", text: $facebook)
                        TextField("Twitter", text: $twitter)
                    }
                    Group {
                        TextField("YouTube", text: $youtube)
                        TextField("Instagram", text: $instagram)
                        TextField("Snapchat", text: $snapchat)
                        TextField("Tumblr", text: $tumblr)
                        TextField("Reddit", text: $reddit)
                        TextField("TikTok", text: $tiktok)
                        TextField("Other information", text: $otherInfo)
                    }
                }
            }
            .navigationTitle("Create Contact")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save"){
                        
                    }
                }
            }
        }
    }
    
    
    
}
struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        AddContact(store: testStore)
    }
}

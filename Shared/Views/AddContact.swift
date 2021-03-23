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
    
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Group {
                        
                        Section(header: Text("Name")) {
                            TextField("Name", text: $name)
                        }
                        Section(header: Text("Nickname")) {
                            TextField("Nickname", text: $nickname)
                        }
                        Section(header: Text("Description")) {
                            TextField("Description", text: $description)
                        }
                        Section(header: Text("Phone number")) {
                            TextField("Phone number", text: $phoneNumber)
                        }
                        Section(header: Text("Email")) {
                            TextField("Email", text: $email)
                        }
                        Section(header: Text("Facebook")) {
                            TextField("Facebook", text: $facebook)
                        }
                        Section(header: Text("Twitter")) {
                            TextField("Twitter", text: $twitter)
                        }
                    }
                    Group {
                        Section(header: Text("YouTube")) {
                            TextField("YouTube", text: $youtube)
                        }
                        Section(header: Text("Instagram")) {
                            TextField("Instagram", text: $instagram)
                        }
                        Section(header: Text("Snapchat")) {
                            TextField("Snapchat", text: $snapchat)
                        }
                        Section(header: Text("Tumblr")) {
                            TextField("Tumblr", text: $tumblr)
                        }
                        Section(header: Text("Reddit")) {
                            TextField("Reddit", text: $reddit)
                        }
                        Section(header: Text("TikTok")) {
                            TextField("TikTok", text: $tiktok)
                        }
                        Section(header: Text("Other information")) {
                            TextField("Other information", text: $otherInfo)
                        }
                    }
                }
            }
            .navigationTitle("Create Contact")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save"){
                        saveContact()
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
    
    func saveContact () {
        store.contacts.append(Contact(name: name,
                                      picture: "",
                                      nickname: nickname,
                                      description: description,
                                      phoneNumber: phoneNumber,
                                      email: email,
                                      facebook: facebook,
                                      twitter: twitter,
                                      youtube: youtube,
                                      instagram: instagram,
                                      snapchat: snapchat,
                                      tumblr: tumblr,
                                      reddit: reddit,
                                      tiktok: tiktok,
                                      otherInfo: otherInfo))
    }
    
}
struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        AddContact(store: testStore, showing: .constant(true))
    }
}

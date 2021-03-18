//
//  AddContact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct AddContact: View {
    
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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        AddContact()
    }
}

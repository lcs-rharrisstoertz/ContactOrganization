//
//  Contact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import Foundation
import SwiftUI

class Contact: Identifiable, ObservableObject {
    
    @Published var id = UUID()
    @Published var group: Color
    @Published var picture: String
    @Published var name: String
    @Published var nickname: String
    @Published var description: String
    @Published var phoneNumber: String
    @Published var email: String
    @Published var facebook: String
    @Published var twitter: String
    @Published var youtube: String
    @Published var instagram: String
    @Published var snapchat: String
    @Published var tumblr: String
    @Published var reddit: String
    @Published var tiktok: String
    @Published var otherInfo: String
    
    
    internal init(id: UUID = UUID(), name: String, picture: String, nickname: String, description: String, phoneNumber: String, email: String, facebook: String, twitter: String, youtube: String, instagram: String, snapchat: String, tumblr: String, reddit: String, tiktok: String, otherInfo: String) {
        self.id = id
        self.picture = picture
        self.name = name
        self.nickname = nickname
        self.description = description
        self.phoneNumber = phoneNumber
        self.email = email
        self.facebook = facebook
        self.twitter = twitter
        self.youtube = youtube
        self.instagram = instagram
        self.snapchat = snapchat
        self.tumblr = tumblr
        self.reddit = reddit
        self.tiktok = tiktok
        self.otherInfo = otherInfo
    }
}

let sampleContacts = [
    Contact(name: "Moonshadow", picture: "😾", nickname: "Moony", description: "My cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat"),
    Contact(name: "Magnus", picture: "😺", nickname: "Maggie", description: "Another cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat"),
    Contact(name: "Zephyr", picture: "🐱", nickname: "Zephyr", description: "Another cat", phoneNumber: "n/a (cat)", email: "n/a (cat)", facebook: "n/a (cat)", twitter: "n/a (cat)", youtube: "n/a (cat)", instagram: "n/a (cat)", snapchat: "n/a (cat)", tumblr: "n/a (cat)", reddit: "n/a (cat)", tiktok: "n/a (cat)", otherInfo: "Cat")
]


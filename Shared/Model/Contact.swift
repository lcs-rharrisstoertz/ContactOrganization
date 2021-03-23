//
//  Contact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import Foundation
import SwiftUI

class Contact: Identifiable, ObservableObject {
    
    var id = UUID()
    var picture: String
    var name: String
    var nickname: String
    @Published var description: String
    var phoneNumber: String
    var email: String
    var facebook: String
    var twitter: String
    var youtube: String
    var instagram: String
    var snapchat: String
    var tumblr: String
    var reddit: String
    var tiktok: String
    var otherInfo: String
    
    
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


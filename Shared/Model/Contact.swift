//
//  Contact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import Foundation

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var nickname: String
    var description: String
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
}

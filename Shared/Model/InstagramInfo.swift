//
//  InstagramInfo.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-23.
//

import Foundation

struct InstagramInfo: Decodable {
    let id: String
    let user: User
}

struct User: Decodable {
    var biography: String
    var full_name: String
}

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
        HStack {
            
        }
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: testStore.contacts[0])
    }
}

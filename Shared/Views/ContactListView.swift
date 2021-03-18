//
//  ContactListView.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct ContactListView: View {
    var contact: Contact
    
    var body: some View {
        HStack{
            Text("🙂")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(contact.description)
                    .font(.subheadline)
                    .fontWeight(.regular)
            }
            Spacer()
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contact: testStore.contacts[0])
    }
}

//
//  ContactListView.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//


//this is a composable view used in ContentView that gives a brief overview of the contacts

import SwiftUI

struct ContactListView: View {
    @ObservedObject var contact: Contact
    
    var body: some View {
        HStack{
            //            Image(contact.picture)
            //                .resizable()
            //                .scaledToFit()
            //                .frame(width: 50.0, height: 50.0)
            Text(contact.picture)
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

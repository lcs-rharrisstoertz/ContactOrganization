//
//  AddContact.swift
//  ContactOrganization (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-18.
//

import SwiftUI

struct AddContact: View {
    
    @ObservedObject var familyStore: ContactStore
    @ObservedObject var friendStore: ContactStore
    @ObservedObject var workStore: ContactStore
    @ObservedObject var otherStore: ContactStore
    
    @State private var type = ""
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
                    /*
                     The code below creates a series of text fields into which the user can type information about the contact. 
                     */
                    Group {
                        Section(header: Text("Contact Type")) {//lets user select contact type, impacting which array they're placed in
                            Picker("Type", selection: $type) {
                                Text("Family").tag("family")
                                Text("Friend").tag("friend")
                                Text("Work").tag("work")
                                Text("Other").tag("other")
                            }
                            .pickerStyle(SegmentedPickerStyle())
                        }
                        Section(header: Text("Name")) {
                            TextField("Name", text: $name)
                        }
                        Section(header: Text("Emoji")) {
                            TextField("Emoji", text: $picture)
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
                        saveContact()//invokes saveContact function below, causing program to save the contact
                        showing = false//hides view
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){//hides view w/o saving
                        showing = false
                    }
                }
            }
        }
    }
    
    // This function adds the new contact to whichever store it belongs in
    func saveContact () {
        if name != "" || picture != "" || nickname != "" || description != "" || phoneNumber != "" || email != "" || facebook != "" || twitter != "" || youtube != "" || instagram != "" || snapchat != "" || tumblr != "" || reddit != "" || tiktok != "" || otherInfo != "" {
            switch type {
            case "family":
                familyStore.contacts.append(Contact(name: name,
                                              picture: picture,
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
                familyStore.contacts = familyStore.contacts.sorted {
                    $0.name < $1.name
                }
            case "friend":
                friendStore.contacts.append(Contact(name: name,
                                              picture: picture,
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
                friendStore.contacts = friendStore.contacts.sorted {
                    $0.name < $1.name
                }
            case "work":
                workStore.contacts.append(Contact(name: name,
                                              picture: picture,
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
                workStore.contacts = workStore.contacts.sorted {
                    $0.name < $1.name
                }
            case "other":
                otherStore.contacts.append(Contact(name: name,
                                              picture: picture,
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
                otherStore.contacts = otherStore.contacts.sorted {
                    $0.name < $1.name
                }
            default:
                break
            }
        }
    }
    
    //the below is unused code
//    func fetchInstagramInfo(username: String) {
//
//        // Set the address of the JSON endpoint
//        let url = URL(string: "https://www.instagram.com/\(username)/?__a=1")!
//
//        // Configure a URLRequest instance
//        // Defines what type of request will be sent to the address noted above
//        var request = URLRequest(url: url)
//        request.setValue("application/json",
//                         forHTTPHeaderField: "Accept")
//        request.httpMethod = "GET"
//
//        // Run the request on a background thread and process the result.
//        // NOTE: This occurs asynchronously.
//        //       That means we don't know precisely when the request will
//        //       complete.
//        URLSession.shared.dataTask(with: request) { data, response, error in
//
//            // When the request *does* complete, there are three parameters
//            // containing data that are created:
//            //
//            // data
//            // The data returned by the server.
//            //
//            // response
//            // An object that provides response metadata, such as HTTP headers and status code. If you are making an HTTP or HTTPS request, the returned object is actually an HTTPURLResponse object.
//            //
//            // error
//            // An error object that indicates why the request failed, or nil if the request was successful.
//
//
//            // Verify that some data was actually returned
//            guard let instagramInfo = data else {
//
//                // When no data is returned, provide a descriptive error
//                //
//                // error?.localizedDescription is an example of "optional chaining"
//                // This means that if the error object is not nil, the
//                // localizedDescription property will be used
//                //
//                // ?? "Unknown error" is an example of the "nil coalescing" operator
//                // This means that when the error object *is* nil, a default string of
//                // "Unknown error" will be provided
//                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
//
//                // Don't continue past this point
//                return
//
//            }
//
//            // DEBUG: See what raw JSON data was returned from the server
//            //print(String(data: instagramInfo, encoding: .utf8)!)
//
//            // Attempt to decode the JSON into an instance of the InstagramInfo structure
//            if let decodedInstagramInfo = try? JSONDecoder().decode(InstagramInfo.self, from: instagramInfo) {
//
//                // DEBUG:
//                print("Instagram data decoded from JSON successfully")
//                print("The bio is: \(decodedInstagramInfo.user.biography)")
//
//                // Now, update the UI on the main thread
//                DispatchQueue.main.async {
//
//                    // Assign the result to the contact info
//                    name = decodedInstagramInfo.user.full_name
////                    description = decodedInstagramInfo.biography
//
//                }
//
//            } else {
//
//                print("Could not decode JSON into an instance of the InstagramInfo structure.")
//
//            }
//
//        }.resume()
//        // NOTE: Invoking the resume() function
//        // on the dataTask closure is key. The request will not
//        // run, otherwise.
//
//    }
    
}
struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        AddContact(familyStore: testStore, friendStore: testStore, workStore: testStore, otherStore: testStore, showing: .constant(true))
    }
}

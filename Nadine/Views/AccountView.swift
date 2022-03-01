//
//  AccountView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/27/21.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    @Environment(\.dismiss) var dismiss
    @AppStorage("isLogged") var isLogged = false

    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
                // Sign out button
                Button {
                    isLogged = false
                    dismiss()
                } label: {
                    Text("Sign out")
                }
                .tint(.red)

            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
            .navigationBarItems(trailing: Button {
                dismiss()
            } label: { Text("Done").bold() })
        }
    }
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.green, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
                .background(
                    BlobView()
                        .offset(x: 90, y: -80)
                        .scaleEffect(2)
                )
            // users name
            Text("Sean Blake")
                .font(.title.weight(.semibold))
            // Location
            HStack {
                Image(systemName: "location")
                    .imageScale(.small)
                Text("Florida")
                    .foregroundColor(.secondary)
            }
        }.frame(maxWidth: .infinity)
         .padding()
    }
    
    var menu: some View {
        Section {
           NavigationLink(destination: HomeView()) {
               Label("Settings", systemImage: "gear")
           }
           NavigationLink {
               Text("Billing")
           } label: {
               Label("Billing", systemImage: "creditcard")
           }
           NavigationLink{ HomeView() } label: {
               Label("Help", systemImage: "questionmark.square.fill")
           }
       }
       .accentColor(.primary)
       .listRowSeparatorTint(.blue)
       .listRowSeparator(.hidden)
    }
    
    var links: some View {
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://5fourlab.com")!) {
                    HStack {
                        Label("Website", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    Button(action: {isDeleted = true}) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
                }
            }
            Link(destination: URL(string: "https://www.youtube.com/channel/UCu-7Xz0NKZAAbBkuKKmjRCQ")!) {
                HStack {
                    Label("YouTube Channel", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton: some View {
        Button(action: { isPinned.toggle() }) {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            
    }
}

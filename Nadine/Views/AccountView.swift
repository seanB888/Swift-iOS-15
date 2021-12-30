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
    
    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
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
            Link(destination: URL(string: "https://www.youtube.com/channel/UCVru9lA1coO2TLRqdZdHxjw")!) {
                HStack {
                    Label("YouTube", systemImage: "tv")
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

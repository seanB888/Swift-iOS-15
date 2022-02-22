//
//  SearchView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 2/22/22.
//

import SwiftUI

struct SearchView: View {
    // store text from the search bar
    @State var text = ""
    // to use the close button
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            List {
                ForEach(courses.filter { $0.title.contains(text) || text == "" }) { item in
                    Text(item.title)
                }
            }
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: "Swift UI, React, UI Design")
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            // the close button
            .navigationBarItems(trailing: Button { presentationMode.wrappedValue.dismiss()} label: { Text("Done").bold()})
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

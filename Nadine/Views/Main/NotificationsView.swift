//
//  NoificationsView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 3/2/22.
//

import SwiftUI

struct NotificationsView: View {
//    @State var showSection = false
//    @State var selectedIndex = 0
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()

            ScrollView {
                sectionsSection
            }
            .safeAreaInset(edge: .top, content: {
                Color.clear.frame(height: 70)
            })
            .overlay(NavigationBar(title: "Notifications", hasScrolled: .constant(true)))
            .background(Image("Blob 1").offset(x: -180, y: 300))
        }
    }
}

var sectionsSection: some View {
    VStack(alignment: .leading) {
        ForEach(Array(courseSections.enumerated()), id: \.offset) { index, section in
            if index != 0 { Divider() }
            SectionRow(section: section)
//                .onTapGesture {
//                    selectedIndex = index
//                    showSection = true
//                }
        }
    }
    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
    .strokeStyle(cornerRadius: 30)
    .padding(20)

}

struct NoificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

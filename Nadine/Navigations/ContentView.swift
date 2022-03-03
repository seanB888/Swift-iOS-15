//
//  ContentView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @AppStorage("showModal") var showModal = false
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch selectedTab {
            case .home:
                HomeView()
            case .explore:
                ExploreView()
            case .notifications:
                NotificationsView()
            case .library:
                LibraryView()
            }
            TabBAR()
                .offset(y: model.showDetail ? 200 : 0)

            if showModal {
                ModalView()
                 .zIndex(1)
                 .accessibilityAddTraits(.isModal)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 88)
        }
        // use to control accessability with a range
        // texts wouldn't go smaller that large and larger than xxlarge
        // this will affect throught the entire app
        .dynamicTypeSize(.large ... .xxLarge)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
//            ContentView()
//                .preferredColorScheme(.dark)
//                .previewDevice("iPhone 8")
//            ContentView()
//                .previewDevice("iPhone 13 max")
//                .previewInterfaceOrientation(.landscapeLeft)
//            ContentView()
//                .previewDevice("iPad Air (4th generation)")
//                .previewInterfaceOrientation(.portrait)
//            ContentView()
//                .previewDevice("iPad Air (4th generation)")
//                .previewInterfaceOrientation(.landscapeLeft)
        }
        .environmentObject(Model())
        
        
        
    }
}

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
                AccountView()
            case .notifications:
                HomeView()
            case .library:
                AccountView()
            }
            TabBAR()
                .offset(y: model.showDetail ? 200 : 0)

            if showModal {
                ZStack {
                    Color.clear.background(.regularMaterial)
                        .ignoresSafeArea()

                    SignUpView()

                    Button {
                        withAnimation {
                            showModal = false
                        }

                    } label: {
                        Image(systemName: "xmark")
                            .font(.body.bold())
                            .foregroundColor(.secondary)
                            .padding(8)
                            .background(.ultraThinMaterial, in: Circle())
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .padding(20)
                            .padding(.top, 30)
                            .ignoresSafeArea()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(20)
                }
                 .zIndex(1)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 48)
        }
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

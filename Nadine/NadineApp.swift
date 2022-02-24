//
//  NadineApp.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/27/21.
//

import SwiftUI

@main
struct NadineApp: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}

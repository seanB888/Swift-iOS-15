//
//  MatchView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/29/21.
//

import SwiftUI

struct MatchView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                
            } else {
                ScrollView {
                    
                }
            }
        }
        
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}

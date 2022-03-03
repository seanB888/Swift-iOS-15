//
//  HexagonView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/27/21.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
        Canvas { context, size in
            context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 100, y: 100, width: 200, height: 214))
        }.frame(width: 400, height: 400, alignment: .center)
            .foregroundStyle(.linearGradient(colors: [.blue, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}

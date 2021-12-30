//
//  FeaturedItem.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/28/21.
//

import SwiftUI

struct FeaturedItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image(course.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(10)
                .padding(9.0)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text(course.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Text(course.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .foregroundColor(.secondary)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
        .padding(.vertical, 20.0)
        .frame(height: 350.0)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 20)
        
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}

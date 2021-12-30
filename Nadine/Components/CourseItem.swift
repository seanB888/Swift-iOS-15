//
//  CourseItem.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/29/21.
//

import SwiftUI

struct CourseItem: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text("SwiftUI").font(.largeTitle.weight(.black))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("20 Sections - 3 Hours".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                    .foregroundColor(.purple)
                Text("Lear how to code in swift for iOS, iOS Watch and iOS TV")
                    .matchedGeometryEffect(id: "description", in: namespace)
                    .font(.body)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
            .offset(y: 100)
        }
        .background(
            Image("Illustration 9")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .background(
            Image("Background 5")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 300)
        .padding(20)
    }
}

struct CourseItem_Previews: PreviewProvider {
    @Namespace static var namspace
    
    static var previews: some View {
        CourseItem(namespace: namspace, show: .constant(false))
    }
}

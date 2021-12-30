//
//  CourseView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/29/21.
//

import SwiftUI

struct CourseView: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
            .background(Color("Background"))
            .ignoresSafeArea()
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.bold())
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(20)
                    .ignoresSafeArea()
            }
        }
    }
    
    var cover: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        
        .frame(height: 500)
        .background(
            Image("Illustration 9")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .background(
            Image("Background 5")
                .resizable()
            // .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .overlay(
            VStack(alignment: .leading, spacing: 12) {
                Text("20 Sections - 3 Hours".uppercased())
                    .foregroundColor(.white)
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("SwiftUI").font(.largeTitle.weight(.black))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Lear how to code in swift for iOS, iOS Watch and iOS TV")
                    .foregroundColor(.white)
                    .matchedGeometryEffect(id: "description", in: namespace)
                    .font(.body)
                Divider()
                HStack {
                    Image("Avatar Default")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .cornerRadius(10)
                        .padding(8)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                        .strokeStyle(cornerRadius: 18)
                    Text("Taught by Sean Blake")
                        .font(.footnote)
                }
            }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .matchedGeometryEffect(id: "blur", in: namespace)
                )
                .offset(y: 250)
                .padding(20)
        )
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        CourseView(namespace: namespace, show: .constant(true))
    }
}

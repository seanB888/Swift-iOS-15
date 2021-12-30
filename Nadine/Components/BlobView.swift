//
//  BlobView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/28/21.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            let now = timeline.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 3) * 30)
            let x = cos(angle.radians)
            let angle2 = Angle.degrees(now.remainder(dividingBy: 6) * 10)
            let x2 = cos(angle2.radians)
            //Text("value: \(x)")
            
            Canvas { context, size in
                context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 400, y: 400)))
            }
            .frame(width: 400, height: 414)
            //            .rotationEffect(.degrees(appear ? 360 : 0))
        }
        //        .onAppear {
        //            withAnimation(.linear(duration: 20).repeatForever(autoreverses:
        //                true)) {
        //                appear = true
        //            }
        //        }
    }
    
}
    
    func path(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.57236*width, y: 0.95488*height))
        path.addCurve(to: CGPoint(x: width*2, y: 0.45803*height), control1: CGPoint(x: 0.79922*width*x, y: 0.75341*height), control2: CGPoint(x: width, y: 0.68897*height))
        path.addCurve(to: CGPoint(x: 0.55411*width, y: 0.03987*height), control1: CGPoint(x: width*x2, y: 0.22709*height*x), control2: CGPoint(x: 0.72621*width, y: -0.11542*height*x))
        path.addCurve(to: CGPoint(x: 0.05085*width, y: 0.45803*height), control1: CGPoint(x: 0.38201*width*x, y: 0.19517*height), control2: CGPoint(x: -0.16819*width, y: 0.27072*height*x))
        path.addCurve(to: CGPoint(x: 0.57236*width, y: 0.95488*height), control1: CGPoint(x: 0.24902*width, y: 0.62749*height), control2: CGPoint(x: 0.3455*width*x2, y: 1.15635*height))
        path.closeSubpath()
        return path
    }

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}

struct BlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.57236*width, y: 0.95488*height))
        path.addCurve(to: CGPoint(x: width, y: 0.45803*height), control1: CGPoint(x: 0.79922*width, y: 0.75341*height), control2: CGPoint(x: width, y: 0.68897*height))
        path.addCurve(to: CGPoint(x: 0.55411*width, y: 0.03987*height), control1: CGPoint(x: width, y: 0.22709*height), control2: CGPoint(x: 0.72621*width, y: -0.11542*height))
        path.addCurve(to: CGPoint(x: 0.05085*width, y: 0.45803*height), control1: CGPoint(x: 0.38201*width, y: 0.19517*height), control2: CGPoint(x: -0.16819*width, y: 0.27072*height))
        path.addCurve(to: CGPoint(x: 0.57236*width, y: 0.95488*height), control1: CGPoint(x: 0.24902*width, y: 0.62749*height), control2: CGPoint(x: 0.3455*width, y: 1.15635*height))
        path.closeSubpath()
        return path
    }
}

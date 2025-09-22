//
//  RecentActivityView.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//

import SwiftUI

struct RecentActivityView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Recent Activity").font(type: .medium, size: 20).foregroundStyle(.white)
                Spacer()
                SeeAllView()
            }
        }
        VStack(alignment: .leading, spacing: 15){
            ActivityView()
            Divider().frame(height:1.4).background(Color(hex: "3e4439"))
            ActivityView()
//            ActivityView()
        }
        .padding(20)
//        .frame(maxWidth: .infinity)
//        .frame(height: 200)
        .background(Color(hex: "2f352a"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(alignment: .top) {
            MyShape()
                .fill(.mainBG)
                .frame(width: 70, height: 14)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex: "2f352a"))
                        .frame(width: 28, height: 3)
                }
        }
    }
}

struct ActivityView: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Circle().fill(Color(hex: "3e4439")).frame(width: 54, height: 54)
                    Image(.payPal).resizable().frame(width: 30, height: 30)
                }
            VStack(alignment: .leading) {
                Text("PayPal").font(type: .medium, size: 20).foregroundStyle(.white)
                Text("Monday, 10th April").font(type: .regular, size: 20).foregroundStyle(Color(hex: "bdc38a"))
            }
            }
            Spacer()
            Text("+$89.00").font(type: .medium, size: 20).foregroundStyle(.white)
        }
    }
}

struct RecentActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0.27 * width, y: 0.95833 * height))
        path.addCurve(to: CGPoint(x: 0, y: 0),
                     control1: CGPoint(x: 0.08971 * width, y: 0.57692 * height),
                     control2: CGPoint(x: 0.19113 * width, y: 0.20558 * height))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addCurve(to: CGPoint(x: 0.74 * width, y: 0.95833 * height),
                     control1: CGPoint(x: 0.80514 * width, y: 0.27002 * height),
                     control2: CGPoint(x: 0.88321 * width, y: 0.65899 * height))
        path.addLine(to: CGPoint(x: 0.27 * width, y: 0.95833 * height))
        path.closeSubpath()
        
        return path
    }
}

//struct MyShape: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let width = rect.size.width
//        let height = rect.size.height
//        path.move(to: CGPoint(x: 0.27*width, y: 0.95833*height))
//        path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 0.08971*width, y: 0.57692*height), control2: CGPoint(x: 0.19113*width, y: 0.20558*height))
//        path.addLine(to: CGPoint(x: width, y: 0))
//        path.addCurve(to: CGPoint(x: 0.74*width, y: 0.95833*height), control1: CGPoint(x: 0.80514*width, y: 0.27002*height), control2: CGPoint(x: 0.88321*width, y: 0.65899*height))
//        path.addLine(to: CGPoint(x: 0.27*width, y: 0.95833*height))
//        path.closeSubpath()
//        return path
//    }
//}

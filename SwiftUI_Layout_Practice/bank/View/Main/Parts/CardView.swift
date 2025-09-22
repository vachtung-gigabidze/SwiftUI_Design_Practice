//
//  CardView.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//
import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            CardContent()
                .background(LinearGradient(colors: [.cardTop, .cardBottom], startPoint: .top, endPoint: .bottom))
                .clipShape(CardShape())
            Image(.star).resizable().frame(width: 30,height: 30).offset(x: -100, y: -120).foregroundStyle(Color(hex:"c1ef00"))
            Image(.star).resizable().frame(width: 16,height: 16).offset(x: -150, y: -70).foregroundStyle(Color(hex:"c1ef00")).opacity(0.2)
            AddButtonView()
        }
    }
}



struct CardContent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            HStack(alignment: .top, spacing: 30){
                VStack(alignment: .leading, spacing: 20){
                    HStack(){
                        Text("МИР").font(type: .medium, size: 17)
                            .foregroundStyle(.white)
                        Spacer()

                        Text("Exp 09/27").font(type: .regular)
                            .foregroundStyle(Color(hex: "BDC3BA"))
                    }
                    VStack(alignment: .leading, spacing: 20){
                        VStack(alignment: .leading, spacing: 10){
                            Text("Card Balance").font(type: .regular)
                                .foregroundStyle(Color(hex: "BDC3BA"))
                            Text("$ 37,878,00").font(type: .bolt, size: 36)
                                .foregroundStyle(Color(hex: "BDC3BA"))
                                
                            
                        }
                        Text("**** **** **** 8967").font(type: .regular, size: 17)
                            .foregroundStyle(.white)
                    }
                }
                Spacer()
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(hex:"C1EF00"))
                        .frame(width: 56)
                        .frame(height: 155)
                        .overlay {
                            Image(.nfc).resizable().frame(width: 27, height: 27)
                        }
                }
                
            }
//            .padding(20)
            HStack{
                Text("Sajibur Rahman").font(type: .regular, size: 16)
                    .foregroundStyle(Color(hex: "BDC3BA"))
                Spacer()
               
            }
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 10))
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CardShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.91306*height))
        path.addLine(to: CGPoint(x: 0, y: 0.08658*height))
        path.addCurve(to: CGPoint(x: 0.05263*width, y: 0), control1: CGPoint(x: 0, y: 0.03876*height), control2: CGPoint(x: 0.02356*width, y: 0))
        path.addLine(to: CGPoint(x: 0.94737*width, y: 0))
        path.addCurve(to: CGPoint(x: width, y: 0.08658*height), control1: CGPoint(x: 0.97644*width, y: 0), control2: CGPoint(x: width, y: 0.03876*height))
        path.addLine(to: CGPoint(x: width, y: 0.72294*height))
        path.addCurve(to: CGPoint(x: 0.94737*width, y: 0.80952*height), control1: CGPoint(x: width, y: 0.77076*height), control2: CGPoint(x: 0.97644*width, y: 0.80952*height))
        path.addLine(to: CGPoint(x: 0.73246*width, y: 0.80952*height))
        path.addCurve(to: CGPoint(x: 0.68953*width, y: 0.84601*height), control1: CGPoint(x: 0.7154*width, y: 0.80952*height), control2: CGPoint(x: 0.6994*width, y: 0.82313*height))
        path.addLine(to: CGPoint(x: 0.64065*width, y: 0.95937*height))
        path.addCurve(to: CGPoint(x: 0.59794*width, y: 0.99586*height), control1: CGPoint(x: 0.63083*width, y: 0.98215*height), control2: CGPoint(x: 0.61493*width, y: 0.99574*height))
        path.addLine(to: CGPoint(x: 0.05285*width, y: 0.99963*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.91306*height), control1: CGPoint(x: 0.0237*width, y: 0.99984*height), control2: CGPoint(x: 0, y: 0.96101*height))
        path.closeSubpath()
        return path
    }
}



//
//  Page1.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//
import SwiftUI
struct Page1: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 23){
                    PageHeader()
                    VStack(alignment: .leading){
                        Text("Welcome back 💕").foregroundStyle(Color(hex: "BDC3BA"))
                            .font(type: .regular, size: 22)
                    Text("Smart Solution for Smart Money.").font(type: .medium, size: 45)
                    }.foregroundStyle(.white)
                    
                  CardView()
                    QuickSendView()
                }
            }
            .padding(.horizontal, 20)
        }.frame(maxWidth: .infinity)
            .background(.mainBG)
    }
}

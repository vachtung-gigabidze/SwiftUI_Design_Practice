//
//  PageHeader.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//
import SwiftUI

struct PageHeader: View {
    var body: some View {
        HStack{
            Button{
                
            } label: {
                Image(.ava)
                    .resizable()
                    .frame(width: 60,height: 60)
                    .clipShape(.circle)
            }
            Spacer()
            HStack(spacing:10){
                Button {
                    
                } label: {
                    ZStack{
                        Circle().fill(Color(hex: "F9F9F9")).frame(width: 60, height: 60)
                        Image(.glass)
                            .resizable()
                            .frame(width: 20,height: 20)
                    }
                }
                Button {
                    
                } label: {
                    ZStack{
                        Circle().fill(Color(hex: "F9F9F9")).frame(width: 60, height: 60)
                        Image(.bell)
                            .resizable()
                            .frame(width: 20,height: 20)
                    }
                }
            }
        }
    }
}

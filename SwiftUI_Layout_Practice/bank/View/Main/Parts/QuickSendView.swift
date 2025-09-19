//
//  QuickSendView.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//
import SwiftUI

struct QuickSendView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Quick Send").font(type: .medium, size: 20).foregroundStyle(.white)
                Spacer()
                SeeAllView()
            }
            HStack() {
                SenderView()
                Spacer()
                SenderView()
                Spacer()
                SenderView()
                Spacer()
                SenderView()
                Spacer()
                SenderView()
            }
        }
        .padding(20)
        .background(Color(hex: "2f352a"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct SenderView: View {
    var body: some View {
        Button {
            
        } label: {
            
        VStack {
            Image(.ava)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(.circle)
            Text("Drake").font(type: .regular, size: 16).foregroundStyle(.white)
        }
        }
    }
}

struct SeeAllView: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Text("See all")
                Image(systemName: "chevron.down")
            }
            .font(type: .regular, size: 14)
            .foregroundStyle(Color(hex: "BDC3BA"))
        }
    }
}

struct QuickSendView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

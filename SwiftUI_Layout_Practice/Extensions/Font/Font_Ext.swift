//
//  View_Extensions.swift
//  SwiftUI_Layout_Practice
//
//  Created by Dmitrii Ziadik on 19.09.2025.
//
import Foundation
import SwiftUI


//Font 
extension View {
    func font(type: Inter, size: CGFloat = 16) -> some View {
        self
            .font(Font.custom(type.rawValue, size: size))
    }
}

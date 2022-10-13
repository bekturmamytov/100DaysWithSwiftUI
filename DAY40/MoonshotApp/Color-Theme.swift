//
//  Color-Theme.swift
//  MoonshotApp
//
//  Created by Bektur Mamytov on 14/10/22.
//

import Foundation
import SwiftUI


//to add a specific extension to ShapeStyle
extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}


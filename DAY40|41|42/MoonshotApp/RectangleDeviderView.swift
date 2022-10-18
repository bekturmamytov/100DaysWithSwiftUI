//
//  RectangleDeviderView.swift
//  MoonshotApp
//
//  Created by Bektur Mamytov on 16/10/22.
//

import SwiftUI

struct RectangleDeviderView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct RectangleDeviderView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDeviderView()
    }
}

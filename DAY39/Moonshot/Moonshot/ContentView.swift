//
//  ContentView.swift
//  Moonshot
//
//  Created by Bektur Mamytov on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(1..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

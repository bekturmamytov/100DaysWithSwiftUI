//
//  ListView.swift
//  MoonshotApp
//
//  Created by Bektur Mamytov on 16/10/22.
//

import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    

    var body: some View {
        ScrollView {
            List {
                ForEach(missions) { mission in
                    Text(mission.displayName)
                }
            }
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

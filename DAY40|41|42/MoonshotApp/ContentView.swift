//
//  ContentView.swift
//  MoonshotApp
//
//  Created by Bektur Mamytov on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridView()
                        .navigationTitle("Moonshot")
                        .background(.darkBackground)
                        .preferredColorScheme(.dark)
                        .toolbar {
                            ToolbarItem {
                                Button {
                                    showingGrid.toggle()
                                } label: {
                                    Image(systemName: showingGrid ? "list.bullet" : "circle.grid.3x3")
                                }
                            }
                        }
                } else {
                    ListView1()
                        .navigationTitle("Moonshot")
                        .background(.darkBackground)
                        .preferredColorScheme(.dark)
                        .toolbar {
                            ToolbarItem {
                                Button {
                                    showingGrid.toggle()
                                } label: {
                                    Image(systemName: showingGrid ? "list.bullet" : "circle.grid.3x3")
                                }
                            }
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct GridView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
   
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
        
    }
}


struct ListView1: View {
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

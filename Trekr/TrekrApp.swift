//
//  TrekrApp.swift
//  Trekr
//
//  Created by Robinson Roa on 23/4/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }.tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }.tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
            
        }
    }
}

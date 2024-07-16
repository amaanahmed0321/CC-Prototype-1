//
//  ContentView.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataModel: DataModel
    var body: some View {
        TabView {
            TaskTabNew()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Tasks")
                }
            LeaderboardTab()
                .tabItem {
                    Image(systemName:"trophy")
                    Text("Leaderboard")
                }
            MapTab()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            ProfileTab()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}

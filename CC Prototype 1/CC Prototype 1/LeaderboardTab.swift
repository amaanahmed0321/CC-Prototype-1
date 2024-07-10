//
//  LeaderboardTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

struct LeaderboardTab: View {
    var body: some View {
        VStack{
            Text("Leaderboard")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundStyle(.black)
            let background = Color(red: 153/255, green: 195/255, blue: 247/255)
            background
           
            Spacer()
            
            Text("Top Players")
                .font(.title2)
                .bold()
              List {
                                  Text("#1")
                                  Text("#2")
                                  Text("#3")
                                  Text("#4")
                                  Text("#5")
                                  Text("#6")
                                  Text("#7")
                                  Text("#8")
                                  Text("#9")
                                  Text("#10")
                                  Text("#11")
                                  Text("#12")
                                  Text("#13")
                                  Text("#14")
                                  Text("#15")
                                  Text("#16")
                                  Text("#17")
                                  Text("#18")
                                  Text("#19")
                                  Text("#20")
          
                              }
              
        }
    }
}

#Preview {
    LeaderboardTab()
}

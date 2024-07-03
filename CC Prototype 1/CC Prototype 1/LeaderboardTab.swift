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
        }
    }
}

#Preview {
    LeaderboardTab()
}

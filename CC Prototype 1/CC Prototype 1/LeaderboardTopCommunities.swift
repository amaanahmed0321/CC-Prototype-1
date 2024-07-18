//
//  LeaderboardTopCommunities.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/16/24.
//

import SwiftUI

struct LeaderboardTopCommunities: View {
    var body: some View {
        // Button("Back") {}
        
        
        
        Text("Top Communities")
            .font(.title)
            .bold()
        Text("Your Community Placement #7")
            .foregroundColor(.blue)
            .padding(0.5)
        Spacer()
        
        List {
            Text("#1  Little Village                         52990 pts")
                .bold()
                .foregroundColor(.yellow)
            Text("#2 Gage Park                              45500 pts")
                .bold()
                .foregroundColor(.gray)
            
            Text("#3 Brighton Park                        42150 pts")
                .bold()
                .foregroundColor(.brown)
            Text("#4 Lincoln Park                          40000 pts")
            Text("#5 Lincoln Square                      39500 pts")
            Text("#6 Albany Park                           39000 pts")
            Text("#7 Rogers Park                           37980 pts")
                .foregroundColor(.blue)
            Text("#8 Uptown                                  35770 pts")
            Text("#9 Edgewater                             33000 pts")
            Text("#10 Hyde Park                            31400 pts")
            Text("#11 Jefferson Park                     30980 pts")
            Text("#12 Pilsen                                   30900 pts")
            Text("#13 Chinatown                           30500 pts")
            Text("#14 West Ridge                          30300 pts")
            Text("#15 Archer Heights                    30000 pts")
            
            
            
        }
    }
}

#Preview {
    LeaderboardTopCommunities()
}

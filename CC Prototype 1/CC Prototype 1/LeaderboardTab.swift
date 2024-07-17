//
//  LeaderboardTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

struct LeaderboardTab: View {
    @State private var amount: CGFloat = 0
    
    let background = Color(red: 153/255, green: 195/255, blue: 247/255)
   
    var body: some View {
        
        VStack{
            Text("Leaderboard")
                .font(.title)
                .multilineTextAlignment(.leading)
                .bold()
                .foregroundStyle(.black)
                .padding(0.1)
            
            
            Spacer()
            
            
            
            Text("Player112's Progress")
                .font(.title)
                .padding(.top, 7)
            
            ZStack {
                Circle()
                    .stroke(Color.white, lineWidth: 20)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 6)
                Circle()
                    .trim(from: 0, to: amount)
                    .stroke(style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round)
                    )
                    .frame(width: 200, height: 200)
                    .foregroundColor(background)
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 1.5), value: amount)
                Text(String(format: "%.0f", amount * 100) + "%")
                    .font(.system(size: 34, weight: .black))
                    .foregroundColor(background)
                
            }
            
            .onAppear() {
                amount = 0.95
            }
            .padding()
            Text("950/1000")
                .foregroundColor(background)
                .font(.title3)
                .bold()
            Text("50 Points Until Milestone #1")
                .padding(.bottom, 20.0)
            
            Text("Top Players")
                .font(.title2)
                .bold()
            Text("Your Placement #153")
                .padding(0.5)
            Spacer()
            List {
                Text("#1  Player244                              12990 pts")
                    .bold()
                    .foregroundColor(.yellow)
                Text("#2 Player278                               12500 pts")
                    .bold()
                    .foregroundColor(.gray)
        
                Text("#3 Player209                               12150 pts")
                    .bold()
                    .foregroundColor(.brown)
                Text("#4 Player256                              12000 pts")
                             Text("#5 Player289                               11900 pts")
                             Text("#6 Player297                               11750 pts")
                             Text("#7 Player237                               11730 pts")
                             Text("#8 Player298                               11710 pts")
                             Text("#9 Player207                               11590 pts")
                             Text("#10 Player249                             11110 pts")
                             Text("#11 Player250                             10980 pts")
                             Text("#12 Player281                             10900 pts")
                             Text("#13 Player276                             10670 pts")
                             Text("#14 Player200                             10300 pts")
                             Text("#15 Player248                             10000 pts")

                
                
            }
            
        }
      
    }
}

#Preview {
    LeaderboardTab()
}

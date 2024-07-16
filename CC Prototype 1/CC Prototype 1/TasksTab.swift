//
//  TasksTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

struct TasksTab: View {
    @EnvironmentObject var dataModel: DataModel
    var body: some View {
        NavigationStack {
            ZStack {
                let background = Color(red: 245/255, green: 245/255, blue: 245/255)
                background
                    .ignoresSafeArea()
                List {
                    //ForEach(dataModel.categories)
                    NavigationLink(destination: LeaderboardTab()) {
                        VStack {
                            Image("Trash Cleaning")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 250)
                                .cornerRadius(20)
                            Text("#GreenEarth #SavethePlanet")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Help cleaning up the trash in your local park!")
                                .font(Font.custom("Sans", size: 17))
                                .multilineTextAlignment(.leading)
                                .bold()
                        }
                    }
                    VStack {
                        Text("Do an act of kindness to those around you!")
                            .multilineTextAlignment(.leading)
                    }

                    NavigationLink(destination: new()) {
                        VStack {
                            Image("New Yellow")
                                .resizable()
                                .scaledToFit()
                            Text("NEW")
                                .foregroundColor(.yellow)
                                .font(Font.custom("Sans", size: 30))
                                .fontWeight(.heavy)
                        }
                    }
                    VStack {
                        
                    }
                    VStack {
                        
                    }
                    VStack {
                        
                    }
                    VStack {
                        
                    }
                    
                }
                .navigationTitle("Tasks")
            }
        }
    }
}

#Preview {
    TasksTab()
}

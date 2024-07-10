//
//  TasksTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

struct TasksTab: View {
    var body: some View {
        ZStack {
            let background = Color(red: 245/255, green: 245/255, blue: 245/255)
            background
                .ignoresSafeArea()
            List {
                VStack {
                    Image("trashCleaning")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .cornerRadius(20)
                    Text("#GreenEarth #SavethePlanet")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Help cleaning up the trash in your local park!")
                        .font(Font.custom("Sans", size: 17))
                        .bold()
                }
                VStack {
                    Text("Do an act of kindness to those around you!")
                }
                VStack {
                    Image("new_yellow")
                        .resizable()
                        .scaledToFit()
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
            VStack{
                ZStack {
                    Color.white
                        .ignoresSafeArea()
                        .frame(height: 34)
                    Text("Tasks")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundStyle(.black)
                }
                //.ignoresSafeArea()
                    Spacer()
                Color.white
                    .ignoresSafeArea()
                    .frame(height: 9)
            }
        }
    }
}

#Preview {
    TasksTab()
}

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
            let background = Color(red: 240/255, green: 240/255, blue: 240/255)
            background
                .ignoresSafeArea()
            VStack{
                    Text("Tasks")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundStyle(.black)
                    Spacer()
                Color.white
                    .ignoresSafeArea()
                    .frame(height: 9)
            }
            VStack {
                Color.white
                    .frame(height: 350)
                    //.cornerRadius(20.0)
                Color.white
                    .frame(height: 250)
                    //.cornerRadius(20.0)
            }
            VStack {
                Spacer()
                    .frame(height: 90)
                Image("trashCleaning")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(20)
                Text("#GreenEarth #SavethePlanet")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.top)
                Text("Help cleaning up the trash in your local park!")
                    .padding(.top)
                    .font(Font.custom("Sans", size: 17))
                    .bold()
                Spacer()
            }
            .padding(.top)
        }
    }
}

#Preview {
    TasksTab()
}

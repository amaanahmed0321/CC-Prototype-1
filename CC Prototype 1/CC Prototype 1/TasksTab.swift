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
            let background = Color(red: 153/255, green: 195/255, blue: 247/255)
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
                    .frame(height: 10)
            }
            VStack {
                Color.white
                    .frame(height: 350)
                    .cornerRadius(25.0)
                Color.white
                    .frame(height: 250)
                    .cornerRadius(25.0)
            }
            VStack {
                Image
            }
        }
    }
}

#Preview {
    TasksTab()
}

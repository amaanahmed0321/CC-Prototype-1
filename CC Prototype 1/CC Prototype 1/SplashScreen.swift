//
//  SplashScreen.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/8/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State var opacity = 0.5
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            
            
            
            VStack{
                ZStack{
                    let background = Color(red: 153/255, green: 195/255, blue: 247/255)
                    background
                        .ignoresSafeArea()
                    VStack {
                        Image(systemName:"trophy.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        Text("CommunityChampion")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundStyle(.black)
                    }
                    
                    
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                withAnimation {
                                    self.isActive = true
                                }
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}

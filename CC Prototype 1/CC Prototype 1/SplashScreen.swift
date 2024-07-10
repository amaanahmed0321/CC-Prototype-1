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
            ZStack {
                let backgroundColor = Color(red: 173/255, green: 215/255, blue: 247/255)
                backgroundColor
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        Image(systemName:"trophy.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .foregroundColor(.black)
                        Text("CommunityChampion")
                            .font(Font.custom("Arial", size: 26))
                            .fontWeight(.heavy)
                            .bold()
                            .foregroundStyle(.black.opacity(0.80))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

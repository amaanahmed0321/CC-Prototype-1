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
    @State private var isRotating = 0.0
    var body: some View {
        if isActive {
            ContentView()
        } else {
            
            ZStack {
                let backgroundColor = Color.white
                //Color(red: 173/255, green: 215/255, blue: 247/255)
                backgroundColor
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        Image("circleBlue")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 750)
                            .foregroundColor(.black)
                            //.position(x: 205, y: 378)
                            .onAppear {
                                withAnimation(.linear(duration: 1)
                                    .speed(0.1).repeatForever(autoreverses: false)) {
                                    isRotating = 360.0
                                }
                            }
                        Text("CommuniCircle")
                            .font(Font.custom("Arial", size: 40))
                            .fontWeight(.bold)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.blue.opacity(0.80))
                            }
                        
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



struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}


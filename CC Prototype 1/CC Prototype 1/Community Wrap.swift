//
//  Community Wrap.swift
//  CC Prototype 1
//
//  Created by sermacbook_15 on 7/15/24.
//

import SwiftUI

struct GradientBackgroundAnimation: View {
    
    @State private var animateGradient: Bool = false
    
    private let startColor: Color = .yellow
    private let endColor: Color = .orange
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Community Wrap")
                .padding(.top, 20)
                .font(.title)
                .bold()
                
            
            Text("A snapshot of our shared achievements in public service, highlighting completed tasks that make a difference in our neighborhood.")
                .padding(.top, 10)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 40)
            
            
            Text("15 Tasks Completed ")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.bottom, 5)
            
            
            Text("Over the past month, you have actively participated in 15 activities, congratulations!")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
            
            
            Text("28 Active Community Members")
                .font(.title)
                .bold()
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            Text("You are a part of a great community, connect with members through tasks & invite your loved ones through our share & connect button on your profile.   ")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.top, 1)
            
            
            
        
            
           
            
            Spacer()
        }
        
        
        
        
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .padding(.horizontal)
        .multilineTextAlignment(.center)
        .background {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }
    }
}

struct GradientBackgroundAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundAnimation()
    }
}

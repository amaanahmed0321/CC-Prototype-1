//
//  ProfileTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

        struct ProfileTab: View {
            let background = Color(red: 65/255, green: 150/255, blue: 255/255)
            
            var body: some View {
                NavigationStack{
                VStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Welcome User112!")
                                .font(Font.custom("Apple SD Gothic Neo Medium", size: 30))
                                .padding(.bottom, 2.0)
                            Text("Your profile")
                                .font(.subheadline)
                                .bold()
                                .padding(.bottom, 0.5)
                        }
                        Spacer()
                    }
                    .padding()
                    .scenePadding(.top)
                    
                    Spacer()
                    HStack{
                        Image("ducky")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 155, height: 200, alignment: .center)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(background,lineWidth: 5))
                            .position(x:80, y:60)
                        Spacer()
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 200, height: 150)
                                .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).stroke(background,lineWidth: 5))
                                .foregroundColor(.white)
                                .frame(width: 200, height: 150)
                            Text("Your Milestones")
                                .font(Font.custom("Apple SD Gothic Neo Medium", size: 20))
                                .bold()
                                .position(x:85, y:-5)
                                .padding()
                        }
                        Spacer()
                    }
                    .padding()
                    
                    NavigationLink(destination: GradientBackgroundAnimation()) {
                        Text("Community Wrap")
                            .font(Font.custom("Apple SD Gothic Neo Medium", size: 21))
                            .bold()
                            .frame(width: 300, height: 100)
                            .foregroundColor(.white)
                            .background(background)
                            .clipShape(Capsule())
                            .position(x: 215, y:40)
                    }
                    Spacer()
                        List{
                            NavigationLink("Settings"){}
                            NavigationLink("Privacy & Safety"){}
                            NavigationLink("Account"){}
                            NavigationLink("Share and Connect"){}
                        }
                        .frame(height: 290)
                        //.position(y: 40)
                        Spacer()
                    }
                    
                }
    }
}

#Preview {
    ProfileTab()
}


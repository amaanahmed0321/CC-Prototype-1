//
//  ProfileTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

        struct ProfileTab: View {
            let background = Color(red: 153/255, green: 195/255, blue: 247/255)
            
            var body: some View {
                VStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Welcome Esther!")
                                .font(.headline)
                            Text("Your profile")
                                .font(.subheadline)
                                .bold()
                        }
                        Spacer()
                    }
                    .padding()
                    .scenePadding(.top)
                    
                    HStack{
                        Image("ducky")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 155, height: 200, alignment: .center)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow,lineWidth: 5))
                            .position(x:70, y:75)
                        
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 200, height: 150)
                                .foregroundColor(.yellow)
                            Text("Your Milestones")
                                .bold()
                                .position(x:70, y:-5)
                                .padding()
                        }
                        
                    }
                    .padding()
                    
                    
                    Button(action: {}, label: {
                        Text("Community Wrap")
                            .bold()
                            .frame(width: 300, height: 100)
                            .foregroundColor(.black)
                            .background(.yellow)
                            .clipShape(Capsule())
                            .position(x: 200, y:40)
                        
                        
                    })
                    NavigationStack{
                        List{
                            NavigationLink("Settings"){}
    
                            NavigationLink("Privacy & Safety"){}
                            NavigationLink("Account"){}
                            NavigationLink("Share and Connect"){}
                        }
                        
                    }
                    
                }
    }
}

#Preview {
    ProfileTab()
}


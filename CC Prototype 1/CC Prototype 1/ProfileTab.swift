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
                    Circle()
                        .frame(width: 130, height: 130)
                        .foregroundColor(.pink)
                        .position(x: 50, y: 60)
                        .padding()
                    VStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 200, height: 150)
                            .foregroundColor(.yellow)
                        Text("Your Milestones")
                            .bold()
                            .position(x:80, y:0)
                            .padding()
                    }
                    
                }
                .padding()
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 320, height: 150)
                }
        
            

           
                    NavigationStack{
                        List{
                            NavigationLink("Settings"){}
                            NavigationLink("Accessibility"){}
                            NavigationLink("Privacy & Safety"){}
                            NavigationLink("Account"){}
                        }
                        
                    }
                

    }
}

#Preview {
    ProfileTab()
}


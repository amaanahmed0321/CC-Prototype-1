//
//  TaskBarFeed.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/10/24.
//

import SwiftUI

struct TaskBarFeed: View {
    var body: some View {
        ZStack {
            Text("Hello")
            List {
                VStack {
                    Image("trashCleaning")
                        .resizable()
                        .scaledToFit()
                    Text("Hello")
                }
                Color.red
                    .frame(width: 700, height: 400)
            }
            .ignoresSafeArea()
            .frame(width: 450, height: 850)
        }
    }
}
#Preview {
    TaskBarFeed()
}



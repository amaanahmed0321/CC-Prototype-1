//
//  new.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/10/24.
//

import SwiftUI

struct new: View {
    @State private var isRotating = 0.0
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .font(.system(size: 64))
                .rotationEffect(.degrees(isRotating))
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(0.1).repeatForever(autoreverses: false)) {
                            isRotating = 360.0
                        }
                }
            Text("Under Maintence, Stay Tuned!")
                .font(Font.custom("Apple SD Gothic Neo Medium", size: 20))
        }
    }
}

#Preview {
    new()
}

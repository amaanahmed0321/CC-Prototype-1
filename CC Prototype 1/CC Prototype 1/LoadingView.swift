//
//  TaskTabNew.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/15/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "antenna.radiowaves.left.and.right")
                .symbolEffect(.bounce, value: 10)
                .font(.system(size: 72))

            Text("Loading")
                .font(Font.custom("Apple SD Gothic Neo Medium", size: 10))
        }

    }
}

#Preview {
    LoadingView()
}

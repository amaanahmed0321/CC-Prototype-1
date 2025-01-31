//
//  CC_Prototype_1App.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI

@main
struct CC_Prototype_1App: App {
    @StateObject private var dataModel = DataModel()
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .environmentObject(dataModel)
        }
    }
}

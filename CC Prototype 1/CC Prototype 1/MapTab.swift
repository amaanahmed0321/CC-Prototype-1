//
//  MapTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI
import MapKit

struct MapTab: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    
                    Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                        .ignoresSafeArea()
                        .accentColor(Color(.systemMint))
                        .onAppear {
                            viewModel.checkIfLocationServicesIsEnabled()
                        }
                    Spacer()
                    Color.white
                        .ignoresSafeArea()
                        .frame(height: 5)
                }
            }
        }
    }
}

#Preview {
    MapTab()
}

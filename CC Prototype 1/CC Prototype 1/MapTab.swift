//
//  MapTab.swift
//  CC Prototype 1
//
//  Created by sermacbook_17 on 7/2/24.
//

import SwiftUI
import MapKit

struct MapTab: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.9, longitude: -87.8), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Map")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.black)
                Spacer()
                Map(coordinateRegion: $region)
            }
        }
    }
}

#Preview {
    MapTab()
}

//
//  TaskTabNew.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/15/24.
//

import SwiftUI
import ConfettiSwiftUI

struct ItemView: View {
    @EnvironmentObject var dataModel: DataModel
    @State var counter: Int = 0
    var isParticipating: Bool = false
    var item: Item

    var body: some View {
        
        ZStack(alignment: .bottom) {
            Image(item.id)
                .resizable()
                .scaledToFill()
                .frame(height: 400)

            VStack(spacing: 0) {
                /*Rectangle()
                    .fill(.white)
                    .frame(height: 3)*/

                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(item.id)

                        Text(item.description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        
                        //Text(item.point)
                            
                    }

                    Spacer()

                    Button {
                        dataModel.add(to: item)
                        if (dataModel.count(for: item) != "0") {
                            counter += 1
                        }
                    } label: {
                        if (dataModel.count(for: item) != "0") {
                            Label(dataModel.count(for: item), systemImage: "person.fill")
                        } else {
                            Label(dataModel.count(for: item), systemImage: "person")
                        }
                    }
                    .buttonStyle(.plain)
                    .confettiCannon(counter: $counter, num: 30, opacity: 20, radius: 400)
                }
                .font(.title3.bold())
                .padding(10)
                .padding(.horizontal, 10)
                .background(.blue)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                
            }
            
        }
        .frame(width: 400)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(color: .black.opacity(0.2), radius: 2)
        .padding(4)
        .confettiCannon(counter: $counter, num: 30, opacity: 20, radius: 300)
    }
}

#Preview {
    ItemView(item: Item(id: "Go Go Curry", description: "Excellent curry and rice."))
        .environmentObject(DataModel())
}

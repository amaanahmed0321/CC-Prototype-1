//
//  ItemView.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

struct ItemView: View {
    @EnvironmentObject var dataModel: DataModel
    var item: Item

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(item.id)
                .resizable()
                .scaledToFill()
                .frame(height: 400)

            VStack(spacing: 0) {
                Rectangle()
                    .fill(.white)
                    .frame(height: 3)

                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(item.id)

                        Text(item.description)
                            .font(.body)
                            //.multilineTextAlignment(.center)
                            
                    }

                    Spacer()

                    Button {
                        dataModel.add(to: item)
                    } label: {
                        Label(dataModel.count(for: item), systemImage: "person.fill")
                    }
                    .buttonStyle(.plain)
                }
                .font(.title3.bold())
                .padding(10)
                .padding(.horizontal, 10)
                .background(.blue)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
            }
        }
        .frame(width: 320)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.2), radius: 2)
        .padding(4)
    }
}

#Preview {
    ItemView(item: Item(id: "Go Go Curry", description: "Excellent curry and rice."))
        .environmentObject(DataModel())
}

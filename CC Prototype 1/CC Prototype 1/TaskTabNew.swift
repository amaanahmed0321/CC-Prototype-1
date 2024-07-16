//
//  TaskTabNew.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/15/24.
//

import SwiftUI

struct TaskTabNew: View {
    @EnvironmentObject var dataModel: DataModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(dataModel.categories) { category in
                    Section {
                        let items = dataModel.matchingItems(for: category)

                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                ForEach(items) { item in
                                    ItemView(item: item)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .listRowInsets(EdgeInsets())
                    } header: {
                        Text(dataModel.title(for: category))
                            .font(.title3.bold())
                            .textCase(.uppercase)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Tasks")
            .searchable(text: $dataModel.searchText)
            /*.toolbar {
                Button(action: dataModel.reset) {
                    Label("Erase data", systemImage: "eraser")
                }
            }*/
        }
    }
}

#Preview {
    TaskTabNew()
        .environmentObject(DataModel())
}

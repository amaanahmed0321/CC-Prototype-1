//
//  DataModel.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/15/24.
//

import SwiftUI

class DataModel: ObservableObject {
    @Published var isLoading = true
    @Published var categories = [Category]()
    @Published var searchText = ""

    init() {
        // Simulate loading from the network
        Task { @MainActor in
            try await Task.sleep(for: .seconds(1))
            categories = Bundle.main.decode("content.json", as: [Category].self)
            isLoading = false
        }
    }

    func count(for item: Item) -> String {
        String(UserDefaults.standard.integer(forKey: item.id))
    }

    func add(to item: Item) {
        @State var isParticipating: Bool = false
        objectWillChange.send()
        let currentCount = UserDefaults.standard.integer(forKey: item.id)
        if (isParticipating == false) {
            isParticipating = true
            UserDefaults.standard.set(currentCount + 1, forKey: item.id)
        } else if (isParticipating == true){
            isParticipating = false
            UserDefaults.standard.set(currentCount - 1, forKey: item.id)
        }
    }

    func reset() {
        objectWillChange.send()
        
        for category in categories {
            for item in category.items {
                UserDefaults.standard.removeObject(forKey: item.id)
            }
        }
    }

    func title(for category: Category) -> LocalizedStringKey {
        let items = matchingItems(for: category)
        return "\(items.count) \(category.id)"
    }

    func matchingItems(for category: Category) -> [Item] {
        if searchText.isEmpty {
            category.items
        } else {
            category.items.filter { $0.id.localizedCaseInsensitiveContains(searchText) }
        }
    }
}


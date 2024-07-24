//
//  TaskTabNew.swift
//  CC Prototype 1
//
//  Created by sermacbook_16 on 7/15/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String
    var icon: String
    var items: [Item]
}

struct Item: Decodable, Identifiable {
    var id: String
    var description: String
    //var point : String
}

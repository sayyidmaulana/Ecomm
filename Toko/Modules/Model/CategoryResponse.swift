//
//  CategoryResponse.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

struct CategoryResponse: Codable {
    let categoryResponse: Deta
    let selectedId: String
    private enum CodingKeys: String, CodingKey {
        case categoryResponse
        case selectedId = "selected_id"
    }
    struct Deta: Codable {
        let id: Int
        let name: String
        let totalData: String
        let parentId: Int
        let childId: Int
        let level: Int
        private enum CodingKeys: String, CodingKey {
            case id
            case name
            case totalData = "total_data"
            case parentId = "parent_id"
            case childId = "child_id"
            case level
        }
    }
    
}

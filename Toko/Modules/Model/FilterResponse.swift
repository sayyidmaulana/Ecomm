//
//  FilterResponse.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

struct FilterResponse: Codable {
    
    let filter : Filter
    
    struct Filter: Codable {
        
        let id: Int
    }
}

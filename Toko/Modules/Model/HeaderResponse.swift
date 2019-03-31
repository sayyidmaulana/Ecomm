//
//  FilterResponse.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

struct HeaderResponse: Codable {
    
    let header : Header
    
    struct Header: Codable {
        
        let totalData: Int
        let totalDataNoCat: Int
        let addParam: String
        let processTime: Float
        let sugesstion: String
        
        private enum CodingKeys: String, CodingKey {
            case totalData = "total_data"
            case totalDataNoCat = "total_data_no_category"
            case addParam = "additional_params"
            case processTime = "process_time"
            case sugesstion = "suggestion_instead"
        }
    }
    
}

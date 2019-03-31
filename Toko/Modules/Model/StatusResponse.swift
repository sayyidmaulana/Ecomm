//
//  StatusResponse.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

struct StatusResponse: Codable {
    let statusResponse: Status
    
    struct Status: Codable {
        let errorCode: Int
        let message: String
        
        private enum CodingKeys: String, CodingKey {
            case errorCode = "error_code"
            case message = "message"
        }
    }
    
}

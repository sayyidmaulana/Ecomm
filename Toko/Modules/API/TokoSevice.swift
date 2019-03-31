//
//  TokoSevice.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Moya

enum TokoService {
    
    case token(code: String)
}

extension TokoService: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://ace.tokopedia.com")!
    }
    
    var path: String {
        switch self {
        case .token:
            return "/search/v2.5/product"
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .token:
            return [:]
            
        }
    }
    
    var method: Method {
        switch self {
        case .token:
            return .post
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    
    var headers: [String : String]? {
        return [
            "Content-Type"  : "application/json",
            "Accept"        : "application/json",
        ]
    }
    
    var task: Task {
        switch self {
        default:
            return .requestParameters(parameters: parameters ?? [:], encoding: parameterEncoding)
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self.method {
        case .put, .post, .get, .delete:
            return JSONEncoding.default
        default:
            return URLEncoding.default
        }
    }
}

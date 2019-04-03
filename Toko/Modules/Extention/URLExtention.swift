//
//  URLExtention.swift
//  Toko
//
//  Created by mac on 01/04/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

extension URL {
    func getQueryString(parameter: String) -> String? {
        return URLComponents(url: self, resolvingAgainstBaseURL: false)?
            .queryItems?
            .first { $0.name == parameter }?
            .value
    }
}

//
//  DataResponse.swift
//  Toko
//
//  Created by mac on 31/03/19.
//  Copyright © 2019 Sayyid Maulana. All rights reserved.
//

import Foundation

struct DataResponse: Codable {
    
    let dataResponse: Data
    
    struct Data: Codable {
        let id: Int
        let name: String
        let uri: String
        let imgUri: String
        let imgUriTuju: String
        let price: String
        let priceRange: String
        let categoryBreadCrumb: String
        let shop: Shop
        let wholeSalePrice: Whole
        let condition: Int
        let preOrder: Int
        let departmentId: Int
        let rating: Int
        let isFeatured: Int
        let countReview: Int
        let countTalk: Int
        let countSold: Int
        let labels: Labels
        let topLabel: String
        let bottomLabel: String
        let badges: Badges
        let originalPrice: String
        let discountExpired: String
        let discountStart: String
        let discountPercentage: Int
        let stock: Int
        
        private enum CodingKeys: String, CodingKey {
                case id
                case name
                case uri
                case imgUri = "image_uri"
                case imgUriTuju = "image_uri_700"
                case price
                case priceRange = "price_range"
                case categoryBreadCrumb = "category_breadcrumb"
                case shop
                case wholeSalePrice = "wholesale_price"
                case condition
                case preOrder
                case departmentId = "department_id"
                case rating
                case isFeatured = "is_featured"
                case countReview = "count_review"
                case countTalk = "count_talk"
                case countSold = "count_sold"
                case labels
                case topLabel = "top_label"
                case bottomLabel = "bottom_label"
                case badges
                case originalPrice = "original_price"
                case discountExpired = "discount_expired"
                case discountStart = "discount_start"
                case discountPercentage = "discount_percentage"
                case stock
        }
        
        struct Shop: Codable {
            let id :Int
            let name: String
            let uri: String
            let isGold: Int
            let rating: Int
            let location: String
            let reputationImgUri: String
            let shopLucky: String
            let city: String
            let isPowerBadge: Bool
            
            private enum CodingKeys: String, CodingKey {
                case id
                case name
                case uri
                case isGold = "is_gold"
                case rating
                case location
                case reputationImgUri = "reputation_image_uri"
                case shopLucky = "shop_lucky"
                case city
                case isPowerBadge = "is_power_badge"
            }
        }
        
        struct Whole: Codable {
            let id : Nol
            
            struct Nol: Codable {
                let countMin: Int
                let countMax: Int
                let price: String
                
                private enum CodingKeys: String, CodingKey {
                    case countMin = "count_min"
                    case countMax = "count_max"
                    case price
                }
            }
        }
        struct Labels: Codable {
            let noul: Noul
            let topLabel: String
            let bottomLabel: String
            
            private enum CodingKeys: String, CodingKey{
                case noul
                case topLabel = "top_label"
                case bottomLabel  = "bottom_label"
            }
            
            struct Noul: Codable {
                let title: String
                let color: String
            }
            
        }
        
        struct Badges: Codable {
            let id: Enol
            
            struct Enol: Codable {
                let title: String
                let imgUrl: String
                let show: Bool
                
                private enum CodingKeys: String, CodingKey {
                    case title
                    case imgUrl = "image_url"
                    case show
                }
            }
        }
        
    }
    
}


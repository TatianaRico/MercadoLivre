//
//  ListModel.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let siteID: String?
    let countryDefaultTimeZone, query: String?
    let paging: Paging?
    let results: [Result]?
    let sort: Sort?
    let availableSorts: [Sort]?
    let filters: [Filter]?
    let availableFilters: [AvailableFilter]?

    enum CodingKeys: String, CodingKey {
        case siteID
        case countryDefaultTimeZone
        case query, paging, results, sort
        case availableSorts
        case filters
        case availableFilters
    }
}

// MARK: - AvailableFilter
struct AvailableFilter: Codable {
    let id, name, type: String?
    let values: [AvailableFilterValue]?
}

// MARK: - AvailableFilterValue
struct AvailableFilterValue: Codable {
    let id, name: String?
    let results: Int?
}

// MARK: - Sort
struct Sort: Codable {
    let id, name: String?
}

// MARK: - Filter
struct Filter: Codable {
    let id, name, type: String?
    let values: [FilterValue]?
}

// MARK: - FilterValue
struct FilterValue: Codable {
    let id: String?
    let name: String?
    let pathFromRoot: [Sort]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case pathFromRoot
    }
}

// MARK: - Paging
struct Paging: Codable {
    let total, primaryResults, offset, limit: Int?

    enum CodingKeys: String, CodingKey {
        case total
        case primaryResults
        case offset, limit
    }
}

// MARK: - Result
struct Result: Codable {
    let id: String?
    let siteID: String?
    let title: String?
    let seller: Seller?
    let price: Double?
    let prices: Prices?
    let salePrice: String?
    let currencyID: String?
    let availableQuantity, soldQuantity: Int?
    let buyingMode: String?
    let listingTypeID: String?
    let stopTime: String?
    let condition: String?
    let permalink: String?
    let thumbnail: String?
    let thumbnailID: String?
    let acceptsMercadopago: Bool?
    let installments: Installments?
    let address: Address?
    let shipping: Shipping?
    let sellerAddress: SellerAddress?
    let attributes: [Attribute]?
    let differentialPricing: DifferentialPricing?
    let originalPrice: Double?
    let categoryID: String?
    let officialStoreID: Int?
    let domainID: String?
    let catalogProductID: String?
    let tags: String?
    let catalogListing, useThumbnailID: Bool?
    let offerScore, offerShare, matchScore, winnerItemID: String?
    let orderBackend: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case siteID
        case title, seller, price, prices
        case salePrice
        case currencyID
        case availableQuantity
        case soldQuantity
        case buyingMode
        case listingTypeID
        case stopTime
        case condition, permalink, thumbnail
        case thumbnailID
        case acceptsMercadopago
        case installments, address, shipping
        case sellerAddress
        case attributes
        case differentialPricing
        case originalPrice
        case categoryID
        case officialStoreID
        case domainID
        case catalogProductID
        case tags
        case catalogListing
        case useThumbnailID
        case offerScore
        case offerShare
        case matchScore
        case winnerItemID
        case orderBackend
    }
}

// MARK: - Address
struct Address: Codable {
    let stateID: String?
    let stateName: String?
    let cityID, cityName: String?

    enum CodingKeys: String, CodingKey {
        case stateID
        case stateName
        case cityID
        case cityName
    }
}

// MARK: - Attribute
struct Attribute: Codable {
    let source: Int?
    let name: String?
    let valueStruct: Struct?
    let values: [AttributeValue]?
    let attributeGroupID: String?
    let attributeGroupName: String?
    let id: String?
    let valueID: String?
    let valueName: String?

    enum CodingKeys: String, CodingKey {
        case source, name
        case valueStruct
        case values
        case attributeGroupID
        case attributeGroupName
        case id
        case valueID
        case valueName
    }
}

// MARK: - Struct
struct Struct: Codable {
    let unit: String?
    let number: Double?
}


// MARK: - AttributeValue
struct AttributeValue: Codable {
    let id: String?
    let name: String?
    let valueStruct: Struct?
    let source: Int?

    enum CodingKeys: String, CodingKey {
        case id, name
        case valueStruct
        case source
    }
}

// MARK: - DifferentialPricing
struct DifferentialPricing: Codable {
    let id: Int?
}

// MARK: - Installments
struct Installments: Codable {
    let quantity: Int?
    let amount, rate: Double?
    let currencyID: String?

    enum CodingKeys: String, CodingKey {
        case quantity, amount, rate
        case currencyID
    }
}

// MARK: - Prices
struct Prices: Codable {
    let id: String?
    let prices: [Price]?
    let presentation: Presentation?
    let paymentMethodPrices: String?
    let referencePrices: [Price]?
    let purchaseDiscounts: String?

    enum CodingKeys: String, CodingKey {
        case id, prices, presentation
        case paymentMethodPrices
        case referencePrices
        case purchaseDiscounts
    }
}

// MARK: - Presentation
struct Presentation: Codable {
    let displayCurrency: String?

    enum CodingKeys: String, CodingKey {
        case displayCurrency
    }
}

// MARK: - Price
struct Price: Codable {
    let id: String?
    let type: String?
    let amount: Double?
    let regularAmount: Double?
    let currencyID: String?
    let lastUpdated: Date?
    let conditions: String?
    let exchangeRateContext: String?
    let metadata: Metadata?
    let tags: String?

    enum CodingKeys: String, CodingKey {
        case id, type, amount
        case regularAmount
        case currencyID
        case lastUpdated
        case conditions
        case exchangeRateContext
        case metadata, tags
    }
}

// MARK: - Conditions
struct Conditions: Codable {
    let contextRestrictions: [String]?
    let startTime, endTime: Date?
    let eligible: Bool?

    enum CodingKeys: String, CodingKey {
        case contextRestrictions
        case startTime
        case endTime
        case eligible
    }
}

// MARK: - Metadata
struct Metadata: Codable {
    let promotionID: String?
    let promotionType: String?
    let campaignID: String?
    let discountMeliAmount: Int?
    let campaignDiscountPercentage: Double?
    let campaignEndDate: Date?
    let orderItemPrice: Double?

    enum CodingKeys: String, CodingKey {
        case promotionID
        case promotionType
        case campaignID
        case discountMeliAmount
        case campaignDiscountPercentage
        case campaignEndDate
        case orderItemPrice
    }
}

// MARK: - Seller
struct Seller: Codable {
    let id: Int?
    let permalink: String?
    let registrationDate: String?
    let carDealer, realEstateAgency: Bool?
    let tags: [String]?
    let sellerReputation: SellerReputation?
    let eshop: Eshop?

    enum CodingKeys: String, CodingKey {
        case id, permalink
        case registrationDate
        case carDealer
        case realEstateAgency
        case tags
        case sellerReputation
        case eshop
    }
}

// MARK: - Eshop
struct Eshop: Codable {
    let seller: Int?
    let eshopRubro: String?
    let eshopID: Int?
    let nickName: String?
    let siteID: String?
    let eshopLogoURL: String?
    let eshopStatusID, eshopExperience: Int?
    let eshopLocations: String?

    enum CodingKeys: String, CodingKey {
        case seller
        case eshopRubro
        case eshopID
        case nickName
        case siteID
        case eshopLogoURL
        case eshopStatusID
        case eshopExperience
        case eshopLocations
    }
}


// MARK: - SellerReputation
struct SellerReputation: Codable {
    let powerSellerStatus: String?
    let levelID: String?
    let metrics: Metrics?
    let transactions: Transactions?
    let realLevel, protectionEndDate: String?

    enum CodingKeys: String, CodingKey {
        case powerSellerStatus
        case levelID
        case metrics, transactions
        case realLevel
        case protectionEndDate
    }
}

// MARK: - Metrics
struct Metrics: Codable {
    let cancellations, claims, delayedHandlingTime: Cancellations?
    let sales: Sales?

    enum CodingKeys: String, CodingKey {
        case cancellations, claims
        case delayedHandlingTime
        case sales
    }
}

// MARK: - Cancellations
struct Cancellations: Codable {
    let period: String?
    let rate: Double?
    let value: Int?
    let excluded: Excluded?
}

// MARK: - Excluded
struct Excluded: Codable {
    let realValue: Int?
    let realRate: Double?

    enum CodingKeys: String, CodingKey {
        case realValue
        case realRate
    }
}

// MARK: - Sales
struct Sales: Codable {
    let period: String?
    let completed: Int?
}

// MARK: - Transactions
struct Transactions: Codable {
    let canceled: Int?
    let period: String?
    let total: Int?
    let ratings: Ratings?
    let completed: Int?
}

// MARK: - Ratings
struct Ratings: Codable {
    let negative, neutral, positive: Double?
}

// MARK: - SellerAddress
struct SellerAddress: Codable {
    let id, comment, addressLine, zipCode: String?
    let country, state, city: Sort?
    let latitude, longitude: String?

    enum CodingKeys: String, CodingKey {
        case id, comment
        case addressLine
        case zipCode
        case country, state, city, latitude, longitude
    }
}

// MARK: - Shipping
struct Shipping: Codable {
    let freeShipping: Bool?
    let mode: String?
    let tags: [String]?
    let logisticType: String?
    let storePickUp: Bool?

    enum CodingKeys: String, CodingKey {
        case freeShipping
        case mode, tags
        case logisticType
        case storePickUp
    }
}

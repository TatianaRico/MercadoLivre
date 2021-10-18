
import Foundation

// MARK: - Welcome
struct ListModel: Codable {
    let siteID: String?
    let countryDefaultTimeZone, query: String?
    let paging: Paging?
    let results: [Result]?
    let sort: Sort?
    let availableSorts: [Sort]?
    let filters: [Filter]?
    let availableFilters: [AvailableFilter]?

    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case countryDefaultTimeZone = "country_default_time_zone"
        case query, paging, results, sort
        case availableSorts = "available_sorts"
        case filters
        case availableFilters = "available_filters"
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
        case pathFromRoot = "path_from_root"
    }
}

// MARK: - Paging
struct Paging: Codable {
    let total, primaryResults, offset, limit: Int?

    enum CodingKeys: String, CodingKey {
        case total
        case primaryResults = "primary_results"
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
    let tags: [String]?
    let catalogListing, useThumbnailID: Bool?
    let offerScore, offerShare, matchScore, winnerItemID: String?
    let orderBackend: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case siteID = "site_id"
        case title, seller, price, prices
        case salePrice = "sale_price"
        case currencyID = "currency_id"
        case availableQuantity = "available_quantity"
        case soldQuantity = "sold_quantity"
        case buyingMode = "buying_mode"
        case listingTypeID = "listing_type_id"
        case stopTime = "stop_time"
        case condition, permalink, thumbnail
        case thumbnailID = "thumbnail_id"
        case acceptsMercadopago = "accepts_mercadopago"
        case installments, address, shipping
        case sellerAddress = "seller_address"
        case attributes
        case differentialPricing = "differential_pricing"
        case originalPrice = "original_price"
        case categoryID = "category_id"
        case officialStoreID = "official_store_id"
        case domainID = "domain_id"
        case catalogProductID = "catalog_product_id"
        case tags
        case catalogListing = "catalog_listing"
        case useThumbnailID = "use_thumbnail_id"
        case offerScore = "offer_score"
        case offerShare = "offer_share"
        case matchScore = "match_score"
        case winnerItemID = "winner_item_id"
        case orderBackend = "order_backend"
    }
}

// MARK: - Address
struct Address: Codable {
    let stateID: String?
    let stateName: String?
    let cityID, cityName: String?

    enum CodingKeys: String, CodingKey {
        case stateID = "state_id"
        case stateName = "state_name"
        case cityID = "city_id"
        case cityName = "city_name"
    }
}

// MARK: - Attribute
struct Attribute: Codable {
    let source: Int?
    let name: String?
    let values: [AttributeValue]?
    let attributeGroupID: String?
    let attributeGroupName: String?
    let id: String?
    let valueID: String?
    let valueName: String?

    enum CodingKeys: String, CodingKey {
        case source, name
        case values
        case attributeGroupID = "attribute_group_id"
        case attributeGroupName = "attribute_group_name"
        case id
        case valueID = "value_id"
        case valueName = "value_name"
    }
}


// MARK: - AttributeValue
struct AttributeValue: Codable {
    let id: String?
    let name: String?
    let source: Int?

    enum CodingKeys: String, CodingKey {
        case id, name
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
        case currencyID = "currency_id"
    }
}

// MARK: - Prices
struct Prices: Codable {
    let id: String?
    let prices: [Price]?
    let presentation: Presentation?
    let paymentMethodPrices: [String]?
    let referencePrices: [Price]?

    enum CodingKeys: String, CodingKey {
        case id, prices, presentation
        case paymentMethodPrices = "payment_method_prices"
        case referencePrices = "reference_prices"
    }
}

// MARK: - Presentation
struct Presentation: Codable {
    let displayCurrency: String?

    enum CodingKeys: String, CodingKey {
        case displayCurrency = "display_currency"
    }
}

// MARK: - Price
struct Price: Codable {
    let id: String?
    let type: String?
    let amount: Double?
    let regularAmount: Double?
    let currencyID: String?
    let lastUpdated: String?
    let conditions: Conditions?
    let exchangeRateContext: String?
    let metadata: Metadata?
    let tags: [String]?

    enum CodingKeys: String, CodingKey {
        case id, type, amount
        case regularAmount = "regular_amount"
        case currencyID = "currency_id"
        case lastUpdated = "last_updated"
        case conditions
        case exchangeRateContext = "exchange_rate_context"
        case metadata, tags
    }
}

// MARK: - Conditions
struct Conditions: Codable {
    let contextRestrictions: [String]?
    let startTime, endTime: String?
    let eligible: Bool?

    enum CodingKeys: String, CodingKey {
        case contextRestrictions = "context_restrictions"
        case startTime = "start_time"
        case endTime = "end_time"
        case eligible
    }
}

// MARK: - Metadata
struct Metadata: Codable {
    let promotionID: String?
    let promotionType: String?
    let campaignID: String?
    let campaignDiscountPercentage: Double?
    let campaignEndDate: String?
    let orderItemPrice: Double?

    enum CodingKeys: String, CodingKey {
        case promotionID = "promotion_id"
        case promotionType = "promotion_type"
        case campaignID = "campaign_id"
        case campaignDiscountPercentage = "campaign_discount_percentage"
        case campaignEndDate = "campaign_end_date"
        case orderItemPrice = "order_item_price"
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
        case registrationDate = "registration_date"
        case carDealer = "car_dealer"
        case realEstateAgency = "real_estate_agency"
        case tags
        case sellerReputation = "seller_reputation"
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
    let eshopLocations: [String]?

    enum CodingKeys: String, CodingKey {
        case seller
        case eshopRubro = "eshop_rubro"
        case eshopID = "eshop_id"
        case nickName = "nick_name"
        case siteID = "site_id"
        case eshopLogoURL = "eshop_logo_url"
        case eshopStatusID = "eshop_status_id"
        case eshopExperience = "eshop_experience"
        case eshopLocations = "eshop_locations"
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
        case powerSellerStatus = "power_seller_status"
        case levelID = "level_id"
        case metrics, transactions
        case realLevel = "real_level"
        case protectionEndDate = "protection_end_date"
    }
}

// MARK: - Metrics
struct Metrics: Codable {
    let cancellations, claims, delayedHandlingTime: Cancellations?
    let sales: Sales?

    enum CodingKeys: String, CodingKey {
        case cancellations, claims
        case delayedHandlingTime = "delayed_handling_time"
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
        case realValue = "real_value"
        case realRate = "real_rate"
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
        case addressLine = "address_line"
        case zipCode = "zip_code"
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
        case freeShipping = "free_shipping"
        case mode, tags
        case logisticType = "logistic_type"
        case storePickUp = "store_pick_up"
    }
}

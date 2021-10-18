//
//  DetailController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Foundation

class DetailController: NSObject {
    
    private let utils = Utils()
    private let product: Result?
    
    public var title: String {
        return product?.title ?? ""
    }
    
    public var price: String {
        utils.formmatedNumber(number: product?.price ?? 0)
    }
    
    public var productImage: String {
        return product?.thumbnail ?? ""
    }
    
    public var productLink: String {
        return product?.permalink ?? ""
    }
    
    init(product: Result?) {
        self.product = product
    }
}

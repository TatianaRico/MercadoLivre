//
//  DetailController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Foundation

class DetailController: NSObject {
    
    let utils = Utils()
    let product: Result?
    
    var title: String {
        return product?.title ?? ""
    }
    
    var price: String {
        utils.formmatedNumber(number: product?.price ?? 0)
    }
    
    var productImage: String {
        return product?.thumbnail ?? ""
    }
    
    var productLink: String {
        return product?.permalink ?? ""
    }
    
    init(product: Result?) {
        self.product = product
    }
}

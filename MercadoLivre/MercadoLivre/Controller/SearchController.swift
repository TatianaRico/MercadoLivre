//
//  SearchController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Foundation

class SearchController: NSObject {
    
    private let request = Request()
    private var listProduct: ListModel?
    
    public func searchProduct(search: String, completion: @escaping (Bool) -> Void) {
        request.searchProduct(search: search) { [weak self] (listModel, success) in
            if success {
                self?.listProduct = listModel
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    public func getListProduct() -> ListModel? {
        return listProduct
    }
}

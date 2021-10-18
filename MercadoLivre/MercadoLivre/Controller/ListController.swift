//
//  ListController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Foundation

class ListController: NSObject {

    private var listProduct: ListModel?
    private let request = Request()
    
    var numberOfRow: Int {
        return self.listProduct?.results?.count ?? 0
    }
    
    init(listProduct: ListModel?) {
        self.listProduct = listProduct
    }
    
    func searchProduct(search: String, completion: @escaping (Bool) -> Void) {
        request.searchProduct(search: search) { [weak self] (listModel, success) in
            if success {
                self?.listProduct = listModel
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    func getProduct(indexPath: IndexPath) -> Result? {
        return listProduct?.results?[indexPath.row]
    }
    
    
}

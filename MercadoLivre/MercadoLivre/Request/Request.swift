//
//  Request.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import Alamofire

class Request: NSObject {
    
    var baseURL: String {
        return Bundle.main.object(forInfoDictionaryKey: "BaseURL") as? String ?? ""
    }
    
    let endPointSearch = "/search?q="
    
    func searchProduct(search: String, completion: @escaping (ListModel?, Bool) -> Void) {
        AF.request("\(baseURL+endPointSearch)\(search)", method: .get).responseJSON { (response) in
            switch response.result {
            case .success:
                do {
                    let model = try JSONDecoder().decode(ListModel.self, from: response.data ?? Data())
                    completion(model, true)
                } catch let error {
                    debugPrint(error)
                    completion(nil, false)
                }
            case .failure:
                completion(nil, false)
            }
        }
    }
}

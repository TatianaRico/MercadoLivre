//
//  ViewController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 14/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import UIKit
import Spinners

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    let controller = SearchController()
    var spinners: Spinners?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSpinner()
    }
    
    func configureSpinner() {
        spinners = Spinners(type: .bubble, with: self)
    }
    
    @IBAction func btnSearch(_ sender: UIButton) {
        spinners?.present()
        controller.searchProduct(search: searchTextField.text ?? "") { [weak self] (success) in
            self?.spinners?.dismiss()
            success ? self?.goToDetail() : self?.showError()
        }
    }
    
    func goToDetail() {
        if let vc = self.storyboard?.instantiateViewController(identifier: "ListViewController") as? ListViewController {
            vc.controller = ListController(listProduct: controller.getListProduct())
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func showError() {
        let alert = UIAlertController(title: "Error", message: "Erro ao procurar o produto", preferredStyle: .alert)
        let btnOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(btnOk)
        self.present(alert, animated: true, completion: nil)
    }
}


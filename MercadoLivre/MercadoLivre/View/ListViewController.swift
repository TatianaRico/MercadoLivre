//
//  ListViewController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import UIKit
import Spinners

class ListViewController: UIViewController {
    @IBOutlet weak var listTbView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    var controller: ListController?
    var spinners: Spinners?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureSpinner()
    }
    
    func configureTableView() {
        listTbView.dataSource = self
        listTbView.delegate = self
        listTbView.reloadData()
    }
    
    func configureSpinner() {
        spinners = Spinners(type: .bubble, with: self)
    }
    
    func goToDetail(indexPath: IndexPath) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController {
            vc.controller = DetailController(product: controller?.getProduct(indexPath: indexPath))
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnSearch(_ sender: UIButton) {
        spinners?.present()
        controller?.searchProduct(search: searchTextField.text ?? "") { [weak self] (success) in
            self?.spinners?.dismiss()
            self?.listTbView.reloadData()
        }
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller?.numberOfRow ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListTableViewCell {
            cell.setup(product: controller?.getProduct(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        goToDetail(indexPath: indexPath)
    }
}

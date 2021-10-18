//
//  DetailViewController.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import UIKit
import ZSWTappableLabel

class DetailViewController: UIViewController {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productValue: UILabel!
    @IBOutlet weak var productLink: ZSWTappableLabel!
    
    public var controller: DetailController?
    private let utils = Utils()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureView()
    }
    
    private func configureView() {
        productTitle.text = controller?.title
        productValue.text = controller?.price
        productImage.sd_setImage(with: URL(string: controller?.productImage ?? ""), completed: nil)
        productLink.text = controller?.productLink
        productLink.tapDelegate = utils
        productLink.attributedText = utils.labelLink(url: controller?.productLink ?? "")
    }
}

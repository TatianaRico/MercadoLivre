//
//  ListTableViewCell.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import UIKit
import SDWebImage

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    let utils = Utils()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(product: Result?) {
        productImage.sd_setImage(with: URL(string: product?.thumbnail ?? ""), completed: nil)
        productTitle.text = product?.title ?? ""
        productPrice.text = utils.formmatedNumber(number: product?.price ?? 0)
    }
}

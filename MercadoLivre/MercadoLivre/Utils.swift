//
//  Utils.swift
//  MercadoLivre
//
//  Created by Tatiana Rico on 15/10/21.
//  Copyright © 2021 Tatiana Rico. All rights reserved.
//

import ZSWTappableLabel

class Utils: NSObject {

    func formmatedNumber(number: Double) -> String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        return currencyFormatter.string(from: NSNumber(value: number)) ?? ""
    }
    
    func labelLink(url: String) -> NSAttributedString {
        let string = NSLocalizedString(url, comment: "")
        let attributes: [NSAttributedString.Key: Any] = [
          .tappableRegion: true,
          .tappableHighlightedBackgroundColor: UIColor.lightGray,
          .tappableHighlightedForegroundColor: UIColor.white,
          .foregroundColor: UIColor.blue,
          .underlineStyle: NSUnderlineStyle.single.rawValue,
          .link: URL(string: url) ?? ""
        ]
        return NSAttributedString(string: string, attributes: attributes)
    }
}

extension Utils: ZSWTappableLabelTapDelegate {
    func tappableLabel(_ tappableLabel: ZSWTappableLabel, tappedAt idx: Int, withAttributes attributes: [NSAttributedString.Key : Any] = [:]) {
        if let url = attributes[.link] as? URL {
          UIApplication.shared.open(url)
        }
    }
}

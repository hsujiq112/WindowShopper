//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Rares Man on 01.09.2020.
//  Copyright © 2020 Rares Man. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 10, y:(frame.size.height / 2) - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7378678322, green: 0.7379931808, blue: 0.7378513217, alpha: 0.8)
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.textAlignment = .center
        currencyLbl.clipsToBounds = true
        let Formatter = NumberFormatter()
        Formatter.numberStyle = .currency
        Formatter.locale = .current
        currencyLbl.text = Formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if placeholder == nil {
            placeholder = " "
        }

        let place = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

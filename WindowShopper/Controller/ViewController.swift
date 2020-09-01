//
//  ViewController.swift
//  WindowShopper
//
//  Created by Rares Man on 01.09.2020.
//  Copyright © 2020 Rares Man. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CurrencyTxtField: CurrencyTxtField!
    @IBOutlet weak var PriceTxt: CurrencyTxtField!
    
    @IBOutlet weak var ResultLbl: UILabel!
    @IBOutlet weak var HoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6472070217, blue: 0.3242304325, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        CurrencyTxtField.inputAccessoryView = calcBtn
        PriceTxt.inputAccessoryView = calcBtn
        ResultLbl.isHidden = true
        HoursLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageText = CurrencyTxtField.text, let PriceText = PriceTxt.text{
            if let wage = Double(wageText), let price = Double(PriceText){
                view.endEditing(true)
                ResultLbl.isHidden = false
                HoursLbl.isHidden = false
                ResultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        ResultLbl.isHidden = true
        HoursLbl.isHidden = true
        CurrencyTxtField.text = ""
        PriceTxt.text = ""
    }
    
}


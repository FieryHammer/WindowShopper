//
//  MainVC.swift
//  WindowShopper
//
//  Created by Horvath, Mate on 2018. 10. 11..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTextField!
    @IBOutlet weak var priceTxtField: CurrencyTextField!
    @IBOutlet weak var resulLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0,
                                             y: 0,
                                             width: view.frame.size.width,
                                             height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calculate",
                         for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                              for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate),
                          for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
        
        resulLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxtField.text, let priceTxt = priceTxtField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resulLbl.isHidden = false
                hoursLbl.isHidden = false
                resulLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        resulLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    
}


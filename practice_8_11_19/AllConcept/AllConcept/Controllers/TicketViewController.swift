//
//  TicketViewController.swift
//  AllConcept
//
//  Created by apple on 2019/11/12.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var roundBT: UIButton!
    
    @IBOutlet weak var oneWayBT: UIButton!
    
    @IBOutlet weak var multiBT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundBT.designButton(borderWidth: 0, borderColor: .clear)
        oneWayBT.designButton(borderWidth: 0, borderColor: .clear)
        multiBT.designButton(borderWidth: 0, borderColor: .clear)
        backView.designView(borderWidth: 0.5, borderColor: #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1))
    }
    
    
    @IBAction func onClickRound(_ sender: Any) {
        changeButtonColor(roundColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), roundTxtColor: .white)
        
    }
    
    @IBAction func onClickOneWay(_ sender: Any) {
        changeButtonColor(oneWayColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: .white)
    }
    
    
    
    @IBAction func onClickMulti(_ sender: Any) {
        changeButtonColor(multiColor: #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), multiTxtColor: .white)
        
    }
    
    func changeButtonColor(roundColor: UIColor = .white , oneWayColor: UIColor = .white, multiColor: UIColor = .white, roundTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), oneWayTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1), multiTxtColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1)) {
        
        roundBT.backgroundColor = roundColor
        oneWayBT.backgroundColor = oneWayColor
        multiBT.backgroundColor = multiColor
        
        roundBT.setTitleColor(roundTxtColor, for: .normal)
        oneWayBT.setTitleColor(oneWayTxtColor, for: .normal)
        multiBT.setTitleColor(multiTxtColor, for: .normal)
    }


}

//
//  UIView+Design.swift
//  AllConcept
//
//  Created by apple on 2019/11/11.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override init(frame: CGRect) {
           super.init(frame: frame)
           setradiusAndShadow()
       }
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           setradiusAndShadow()
       }
       
       func setradiusAndShadow() {
           layer.cornerRadius = 5
           clipsToBounds = true
           layer.masksToBounds = false
           layer.shadowRadius = 5
           layer.shadowOpacity = 0.5
           layer.shadowOffset = CGSize(width: 3, height: 0)
           layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
       }
}
extension UIView{
    func designView(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))  {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}

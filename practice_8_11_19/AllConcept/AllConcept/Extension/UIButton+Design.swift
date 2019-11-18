//
//  UIButton+Design.swift
//  AllConcept
//
//  Created by apple on 2019/11/08.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

extension UIButton {
    func designButton(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))  {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
}


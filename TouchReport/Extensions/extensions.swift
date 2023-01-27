//
//  extensions.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 21/11/2022.
//

import Foundation
import UIKit

let button = UIButton(type: .custom)
extension UITextField {
    
    func enablePasswordToggle() {
        
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        rightView = button
        rightViewMode = .always
        button.alpha = 0.4
    }
    
    @objc func togglePasswordView(_ sender: Any) {
        isSecureTextEntry.toggle()
        button.isSelected.toggle()
    }
}


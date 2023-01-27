//
//  Colors.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 16/11/2022.
//

import Foundation
import UIKit

enum Colors {

    case primary

    case textFieldBG

    case gray



    func getColors() -> UIColor {

        switch self {

        case .primary:

            return UIColor(named: "Buton-Color")!

        case .textFieldBG:

            return UIColor(named: "Textfield-Fill-Color")!

        case.gray:
            return UIColor(named: "Buton-Color-Text")!
            
        

        } 

    }

}

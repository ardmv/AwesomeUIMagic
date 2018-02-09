//
//  DesignableLabel.swift
//  MV UI Hacks
//
//  Created by Evandro Harrison Hoffmann on 07/07/2016.
//  Copyright © 2016 It's Day Off. All rights reserved.
//

import UIKit

@IBDesignable
open class DesignableLabel: UILabel {
    
    // MARK: - Formatting
    
    @IBInspectable open var lineHeight: CGFloat = 0 {
        didSet {
            let attributedString = NSMutableAttributedString(string: self.text!)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight - self.font.pointSize
            paragraphStyle.alignment = self.textAlignment
            attributedString.addAttribute(NSAttributedStringKey(rawValue: "NSParagraphStyleAttributeName"), value: paragraphStyle, range: NSMakeRange(0, self.text!.count))
            self.attributedText = attributedString
        }
    }
    
    
}

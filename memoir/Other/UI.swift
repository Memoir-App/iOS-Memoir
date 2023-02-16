//
//  UI.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import Foundation
import UIKit

class UI {
    static func round(_ any: AnyObject) {
        any.layer?.cornerRadius = any.frame!.height / 2
    }
}

extension UIFont {
    
    class func rounded(ofSize size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: size, weight: weight)
        let font: UIFont
        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
            font = UIFont(descriptor: descriptor, size: size)
        } else {
            font = systemFont
        }
        return font
    }
}

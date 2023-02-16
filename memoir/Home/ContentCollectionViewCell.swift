//
//  ContentCollectionViewCell.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewWidth: NSLayoutConstraint!
    
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        view.layer.cornerRadius = 20
    }
    
}

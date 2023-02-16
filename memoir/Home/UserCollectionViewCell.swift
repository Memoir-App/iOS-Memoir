//
//  UserCollectionViewCell.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        view.layer.cornerRadius = 20
    }
}

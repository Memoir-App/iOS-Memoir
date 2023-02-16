//
//  DelegateViewController.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class DelegateViewController: UIViewController {
    
    @IBOutlet weak var memoirLabel: UILabel!
    
    var signedIn = true
    
    override func viewWillAppear(_ animated: Bool) {
        memoirLabel.font = .rounded(ofSize: 42.5, weight: .medium)
        if signedIn == true {
            let homeViewController = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            homeViewController.modalPresentationStyle = .fullScreen
            self.present(homeViewController, animated: false, completion: nil)
        } else {
            
        }
    }
}

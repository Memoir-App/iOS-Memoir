//
//  LaunchViewController.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class LaunchViewController: UIViewController {

    let delegateViewController = UIStoryboard(name: "Launch", bundle: nil).instantiateViewController(withIdentifier: "DelegateViewController") as! DelegateViewController
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        delegateViewController.modalPresentationStyle = .fullScreen
        self.present(delegateViewController, animated: false, completion: nil)
    }
}

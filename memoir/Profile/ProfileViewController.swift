//
//  ProfileViewController.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var homeView: UIView!
    
    @IBOutlet weak var homeImage: UIImageView!
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var profileView: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UI.round(homeView)
        UI.round(profileView)
        UI.round(createButton)
        homeButton.addTarget(self, action: #selector(homeHeld), for: [.touchDown, .touchDragEnter])
        homeButton.addTarget(self, action: #selector(homeReleased), for: [.touchUpInside, .touchDragExit, .touchCancel])
        profileButton.addTarget(self, action: #selector(profileHeld), for: [.touchDown, .touchDragEnter])
        profileButton.addTarget(self, action: #selector(profileReleased), for: [.touchUpInside, .touchDragExit, .touchCancel])
    }
    
    @objc func homeHeld() {
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseInOut) {
            self.homeView.transform = CGAffineTransform(scaleX: 0.825, y: 0.825)
            self.homeView.alpha = 0.5
        }
    }

    @objc func homeReleased() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.1, options: .curveEaseInOut) {
            self.homeView.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.homeView.alpha = 1
        }
    }
    
    @IBAction func homeTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.dismiss(animated: false)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.alpha = 1
        }
    }
    
    @objc func profileHeld() {
        UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseInOut) {
            self.profileView.transform = CGAffineTransform(scaleX: 0.825, y: 0.825)
            self.profileView.alpha = 0.5
        }
    }

    @objc func profileReleased() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.1, options: .curveEaseInOut) {
            self.profileView.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.profileView.alpha = 1
        }
    }
    
    @IBAction func profileTapped(_ sender: Any) {
        
    }
    
    @IBAction func createTapped(_ sender: Any) {
    }
}

//
//  ViewController.swift
//  memoir
//
//  Created by Luke Saunders on 2/2/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var friendsButton: UIButton!
    
    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var homeView: UIView!
    
    @IBOutlet weak var homeImage: UIImageView!
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var profileView: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UI.round(friendsButton)
        UI.round(searchView)
        UI.round(createButton)
        
        UI.round(profileView)
        UI.round(homeView)
        
        searchTextField.font = .rounded(ofSize: 16.75, weight: .medium)
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.contentInset = UIEdgeInsets.init(top: 0, left: 17, bottom: 0, right: 17)
        
        tableView.delegate = self
        tableView.dataSource = self
        
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
        let profileViewController = self.storyboard!.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        profileViewController.modalPresentationStyle = .fullScreen
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.present(profileViewController, animated: false, completion: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.alpha = 1
        }
    }

    @IBAction func createTapped(_ sender: Any) {
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as! UserCollectionViewCell
        cell.layoutIfNeeded()
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 != 0 {
            return 20
        } else {
            return 400
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 != 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SpaceTableViewCell", for: indexPath) as! SpaceTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ContentTableViewCell", for: indexPath) as! ContentTableViewCell
            return cell
        }
    }
}

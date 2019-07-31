//
//  ViewController.swift
//  SimpleContacts
//
//  Created by Francis Martin Fuerte on 24/07/2019.
//  Copyright © 2019 Code with Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    var model = Contacts()
    var contactArray = [ContactDetails]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        contactArray = model.getContacts()
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contactArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContactCell", for: indexPath) as! ContactCollectionViewCell
        let details = contactArray[indexPath.row]
     
        cell.contactnumLabel.text = details.contactnum
        cell.firstnameLabel.text = details.firstname
        cell.lastnameLabel.text = details.lastname
        cell.categoryLabel.text = details.getCategory()
        
        cell.containerView.backgroundColor = details.getColor()
        
        
        return cell
    }
    

    


}


//
//  ContactDetails.swift
//  SimpleContacts
//
//  Created by Francis Martin Fuerte on 24/07/2019.
//  Copyright © 2019 Code with Chris. All rights reserved.
//

import Foundation
import UIKit

struct ContactDetails{
    var firstname:String
    var lastname:String
    var contactnum:String
    var category:Int
    
    init(_ firstname:String, _ lastname:String, _ contactnum:String, _ category:Int){
        self.firstname = firstname
        self.lastname = lastname
        self.contactnum = contactnum
        self.category = category
    }
    
    func getCategory() -> String {
        
        switch category{
        case 1: return "Family"
        case 2: return "Work"
        case 3: return "Friends"
        default: return "Others"
        }
        
    }
    
    func getColor() -> UIColor {
        switch category{
        case 1: return UIColor.blue
        case 2: return UIColor.red
        case 3: return UIColor.yellow
        default: return UIColor.gray
        }
    }
    
    
    
}

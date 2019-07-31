//
//  Contacts.swift
//  SimpleContacts
//
//  Created by Francis Martin Fuerte on 24/07/2019.
//  Copyright © 2019 Code with Chris. All rights reserved.
//

import Foundation

class Contacts{
    
    func getContacts() -> [ContactDetails] {
        var contactList = [ContactDetails]()
        
        contactList.append(ContactDetails("Mark", "Yu", "123526", 1))
        contactList.append(ContactDetails("Henry", "Si", "251252", 2))
        contactList.append(ContactDetails("Karl", "Lim", "377332", 3))
        contactList.append(ContactDetails("David", "Carpio", "347453", 4))
        
        return contactList
        
    }
}

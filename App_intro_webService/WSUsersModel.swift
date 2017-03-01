//
//  WSUsersModel.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class WSUsersModel: NSObject {
    
    
    var id : Int?
    var name : String?
    var username : String?
    var email : String?
    var address : WSDireccionesUsers?
    var phone : String?
    var website : String?
    var company : WSCompanyUsers?
    
    init(pId : Int, pName : String, pUsername : String, pEmail : String, pAddress : WSDireccionesUsers, pPhone : String, pWebsite : String, pCompany : WSCompanyUsers) {
        
        self.id = pId
        self.name = pName
        self.username = pUsername
        self.email = pEmail
        self.address = pAddress
        self.phone = pPhone
        self.website = pWebsite
        self.company = pCompany
        super.init()
        
    }
    
    
    
    
    

}







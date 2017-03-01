//
//  WSDireccionesUsers.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class WSDireccionesUsers: NSObject {
    
    var street : String?
    var suite : String?
    var city : String?
    var zipcode : String?
    var geo : WSGeoUsers?
    
    init(pStreet : String, pSuite : String, pCity : String, pZipCode : String, pGeo : WSGeoUsers) {
        
        self.street = pStreet
        self.suite = pSuite
        self.city = pCity
        self.zipcode = pZipCode
        self.geo = pGeo
        super.init()
    }

}











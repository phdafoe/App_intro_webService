//
//  WSParserUsersModel.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserUsersModel: NSObject {
    
    func getUsersParserModel(_ dataFromNetworks : NSData) -> [WSUsersModel]{
        var arrayUsersModel = [WSUsersModel]()
        let jsonLegible = JSON(data: dataFromNetworks as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        for item in 0..<jsonLegible.count{
            
            let geoModel = WSGeoUsers(pLat: jsonLegible[item]["address"]["geo"]["lat"].string!,
                                      pLng: jsonLegible[item]["address"]["geo"]["lng"].string!)
            
            let companyModel = WSCompanyUsers(pName: jsonLegible[item]["company"]["name"].string!,
                                              pCatchPhrase: jsonLegible[item]["company"]["catchPhrase"].string!,
                                              pBs: jsonLegible[item]["company"]["bs"].string!)
            
            let direccionModel = WSDireccionesUsers(pStreet: jsonLegible[item]["address"]["street"].string!,
                                                    pSuite: jsonLegible[item]["address"]["suite"].string!,
                                                    pCity: jsonLegible[item]["address"]["city"].string!,
                                                    pZipCode: jsonLegible[item]["address"]["zipcode"].string!,
                                                    pGeo: geoModel)
            
            let usersModel = WSUsersModel(pId: jsonLegible[item]["id"].int!,
                                          pName: jsonLegible[item]["name"].string!,
                                          pUsername: jsonLegible[item]["username"].string!,
                                          pEmail: jsonLegible[item]["email"].string!,
                                          pAddress: direccionModel,
                                          pPhone: jsonLegible[item]["phone"].string!,
                                          pWebsite: jsonLegible[item]["website"].string!,
                                          pCompany: companyModel)
            
            arrayUsersModel.append(usersModel)
        }
        return arrayUsersModel
    }

}

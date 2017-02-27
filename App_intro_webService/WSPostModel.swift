//
//  WSPostModel.swift
//  App_intro_webService
//
//  Created by formador on 27/2/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class WSPostModel: NSObject {
    
    var userId : Int?
    var id : Int?
    var title : String?
    var body : String?
    
    init(pUserId : Int, pId : Int, pTitle : String, pBody : String) {
        self.userId = pUserId
        self.id = pId
        self.title = pTitle
        self.body = pBody
        super.init()
    }
    
}

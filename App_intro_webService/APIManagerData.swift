//
//  APIManagerData.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class APIManagerData: NSObject {
    
    //MARK: - Variables locales
    let posts = WSParserDataUno()
    let users = WSParserUsersModel()
    
    //MARK: - SINGLETON
    static let shared = APIManagerData()
    
    //MARK: - Llamada Singleton Posts
    func getPostsApi() -> [WSPostModel]{
        let url = URL(string: CONSTANTES.BASE_URL.BASE_URL_POST)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayPostsModel = posts.getPostParserModel(jsonFromData!)
        return arrayPostsModel
    }
    
    
    //MARK: - Llamada Singleton Users
    func getUsersApi() -> [WSUsersModel]{
        let url = URL(string: CONSTANTES.BASE_URL.BASE_URL_USERS)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayUsersModel = users.getUsersParserModel(jsonFromData!)
        return arrayUsersModel
    }
    
}













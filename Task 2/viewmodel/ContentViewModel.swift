//
//  ContentViewModel.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 06/01/23.
//

import Foundation
import SwiftyJSON

class ContentViewModel: ObservableObject {
    
    @Published var user = User()
    @Published var isLoading = false
    
    func apiGetUser() {
        isLoading = true
        AFHttp.get(url: AFHttp.API_USER_LIST, params: AFHttp.emptyParams(), handler: { response in
            self.isLoading = false
            
            switch response.result {
                case .success(let data):
                    let json = JSON(data)
                    self.user = self.parseJsonToObject(json: json) ?? User()
                case .failure(let error):
                    print("Error:", error.localizedDescription)
            }
        })
    }
    
    func parseJsonToObject(json: JSON) -> User? {
        if json.isEmpty { return nil}
        let login: String = json["login"].string!
        let id: Int = json["id"].int!
        let name: String = json["name"].string!
        let company: String = json["company"].string!
        let bio: String = json["bio"].string!
        let twitter_username: String = json["twitter_username"].string!
        let public_repos: Int = json["public_repos"].int!
        let followers: Int = json["followers"].int!
        let following: Int = json["following"].int!
        let created_at: String = json["created_at"].string!
        let updated_at: String = json["updated_at"].string!
        
        return User(login: login, id: id, name: name, company: company, bio: bio, twitter_username: twitter_username, public_repos: public_repos, followers: followers, following: following, created_at: created_at, updated_at: updated_at)
    }
}

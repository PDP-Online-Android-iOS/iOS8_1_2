//
//  User.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 06/01/23.
//

import Foundation

struct User: Codable {
    var login: String
    var id: Int
    var name: String
    var company: String
    var bio: String
    var twitter_username: String
    var public_repos: Int
    var followers: Int
    var following: Int
    var created_at: String
    var updated_at: String
    
    init(){
        login = ""
        id = 0
        name = ""
        company = ""
        bio = ""
        twitter_username = ""
        public_repos = 0
        followers = 0
        following = 0
        created_at = ""
        updated_at = ""
    }
    
    init(login: String, id: Int, name: String, company: String, bio: String, twitter_username: String, public_repos: Int, followers:  Int, following: Int, created_at: String, updated_at: String) {
        self.login = login
        self.id = id
        self.name = name
        self.company = company
        self.bio = bio
        self.twitter_username = twitter_username
        self.public_repos = public_repos
        self.followers = followers
        self.following = following
        self.created_at = created_at
        self.updated_at = updated_at
    }
}

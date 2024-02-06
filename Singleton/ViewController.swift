//
//  ViewController.swift
//  Singleton
//
//  Created by archana racha on 06/02/24.
//

import UIKit

struct LoggedInUser {}
struct FeedItem {}
struct Follower {}

// Main Module
extension ApiClient{
    func login(completion:(LoggedInUser) -> Void){}
}
extension ApiClient{
    func loadFollower(completion: ([Follower]) -> Void){}
}
extension ApiClient{
    func loadFeed(completion: ([FeedItem]) -> Void){}
}

// API Module
//Singleton
 class ApiClient {
     static let instance = ApiClient()
     private init(){}
     func execute(_ : URLRequest, completion: (Data) -> Void){}
     
}

class MockApiClient : ApiClient{}
//singleton : there is convinience methodURLSession() and URLSession.shared


// login Module
class LoginViewController : UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?

    func didTapLoginButton() {
        login? { user in
            //show next screen
            
        }
    }
}

// Feed Module
class FeedService {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
     func load() {
        loadFeed? { loadedItems in
                // update UI
            
        }
    }
}

// Follower Module
class FollowerViewController : UIViewController {
    var loadFollower: ((([Follower]) -> Void) -> Void)?
    override func viewDidLoad() {
        loadFollower? { followers in
                // update UI
            
        }
    }
}

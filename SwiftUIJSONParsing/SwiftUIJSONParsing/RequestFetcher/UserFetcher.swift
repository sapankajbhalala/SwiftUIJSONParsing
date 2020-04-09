//
//  UserFetcher.swift
//  SwiftUIJSONParsing
//
//  Created by Pankaj Bhalala on 09/04/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import SwiftUI

class UserFetcher: ObservableObject {

    @Published var users = [User]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([User].self, from: d)
                    DispatchQueue.main.async {
                        self.users = decodedLists
                    }
                }else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
         
    }
}

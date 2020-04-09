//
//  FetchUserView.swift
//  SwiftUIJSONParsing
//
//  Created by Pankaj Bhalala on 09/04/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import SwiftUI

struct FetchUserView: View {
    @ObservedObject var fetcher = UserFetcher()
    
    var body: some View {
        VStack {
            HStack {
                Text("Users")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(10)
            List(fetcher.users) { user in
                HStack {
                  Image("user")
                    .resizable()
                    .clipped()
                    .frame(width: 120, height: 120)                    
                  VStack {
                    HStack {
                        Text(user.userName)
                        .foregroundColor(Color.blue)
                      Spacer()
                    }
                    HStack {
                        Text(user.name)
                        .foregroundColor(Color.red)
                      Spacer()
                    }
                    HStack {
                      Text("@: \(user.email)").foregroundColor(Color.gray)
                        .lineLimit(1)
                      Spacer()
                    }
                    HStack {
                        Text("PH: \(user.phone)")
                        Spacer()
                    }
                    HStack {
                        Text(user.website).foregroundColor(Color.secondary)
                        Spacer()
                    }
                    Spacer()
                  }
                }
            }
        }
    }
}

struct FetchUserView_Previews: PreviewProvider {
    static var previews: some View {
        FetchUserView()
    }
}

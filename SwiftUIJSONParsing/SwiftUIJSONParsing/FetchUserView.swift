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
                UserRow(user: user)
            }
        }
    }
}

struct FetchUserView_Previews: PreviewProvider {
    static var previews: some View {
        FetchUserView()
    }
}

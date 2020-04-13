//
//  UserRow.swift
//  SwiftUIJSONParsing
//
//  Created by Pankaj Bhalala on 10/04/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    var user: User
    var body: some View {
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
        Image(systemName: "arrowtriangle.right.fill")
        }
    }
}

//
//  ContentView.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 06/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    Text(viewModel.user.login)
                    Text("UserID: 123456789")
                    
                    HStack {
                        Text("Full name")
                        Spacer()
                        Text(viewModel.user.name)
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Company")
                        Spacer()
                        Text(viewModel.user.company)
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Followers")
                        Spacer()
                        Text(String(viewModel.user.followers))
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Following")
                        Spacer()
                        Text(String(viewModel.user.following))
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Twitter")
                        Spacer()
                        Text(viewModel.user.twitter_username)
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Bio")
                        Spacer()
                        Text(viewModel.user.bio)
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Created at")
                        Spacer()
                        Text(viewModel.user.created_at)
                    }
                    .padding(.top, 15)
                    
                    HStack {
                        Text("Updated at")
                        Spacer()
                        Text(viewModel.user.updated_at)
                    }
                    .padding(.top, 15)
                    
                }
                
                if viewModel.isLoading {
                    ProgressView()
                }
            }.padding()
        }.onAppear() {
            viewModel.apiGetUser()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

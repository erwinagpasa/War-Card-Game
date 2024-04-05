//
//  ContentView.swift
//  WarCardGame
//
//  Created by Developer on 02/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          Image("background-cloth")
            .resizable()
            .ignoresSafeArea()
          
          VStack {
            Spacer()
            Image("logo")
            Spacer()
            
            HStack {
              Spacer()
              Image("card2")
              Spacer()
              Image("card3")
              Spacer()
            }
           
            Spacer()
            
            Button("Deal") {
              print("Deal Cards")
            }
            
            Spacer()
            
            
            
            HStack {
              Spacer()
              VStack {
                Text("Player")
                  .font(.headline)
                Text("0")
                  .font(.largeTitle)
              }
              Spacer()
              VStack {
                Text("Player")
                  .font(.headline)
                Text("0")
                  .font(.largeTitle)
              }
              Spacer()
            }
            .foregroundColor(.white)
            Spacer()
                      
          }
        }
    }
}

#Preview {
    ContentView()
}

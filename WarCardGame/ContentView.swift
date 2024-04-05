//
//  ContentView.swift
//  WarCardGame
//
//  Created by Developer on 02/03/2024.
//

import SwiftUI

struct ContentView: View {
  
  /*
   the "var" keyword is used to declare mutable variables,
   meaning the value stored in the variable can be changed
   after it is initialized.
   */
  var playerCard = "card7"
  var cpuCard = "card13"

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
              Image(playerCard)
              Spacer()
              Image("card3")
              Spacer()
            }
           
            Spacer()
            
          
            Button {
              //Calling the function "deal"
              deal()
            } label: {
              Image("button")
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
  
  func deal() {
    print("Deal Card")
  }
  
  
}

#Preview {
    ContentView()
}

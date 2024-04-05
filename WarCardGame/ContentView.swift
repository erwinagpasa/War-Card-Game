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
  
  // @State is a property wrapper
  @State var playerCard = "card7"
  @State var cpuCard = "card13"

  var playerScore = 0
  var cpuScore = 0
  
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
              Image(cpuCard)
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
                //Casting converting int to string
                Text(String(playerScore))
                  .font(.largeTitle)
              }
              Spacer()
              VStack {
                Text("Player")
                  .font(.headline)
                Text(String(cpuScore))
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
    //Randomize the layer card
    // three dots means range
    playerCard = "card" + String(Int.random(in: 2...14))
    
    //Randomize the cpu card
    cpuCard = "card" + String(Int.random(in: 2...14))
    
    //Update the scores
    
  }
}

#Preview {
    ContentView()
}

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

  @State var playerScore = 0
  @State var cpuScore = 0
  
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
                Text("CPU")
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
    let playerCardValue = Int.random(in: 2...14)
    playerCard = "card" + String(playerCardValue)
    
    //Randomize the cpu card
    let cpuCardValue = Int.random(in: 2...14)
    cpuCard = "card" + String(cpuCardValue)
    
    //Update the scores
    if playerCardValue > cpuCardValue {
      //Add 1 to player score
      playerScore += 1
    } 
    else if cpuCardValue > playerCardValue {
      // Add 1 to cpu score
      cpuScore += 1
    }
    else{
      //Tie
      //Do nothing
    }
    
  }
}

#Preview {
    ContentView()
}

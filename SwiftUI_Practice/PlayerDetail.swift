//
//  PlayerDetail.swift
//  SwiftUI_Practice
//
//  Created by Sachin Sabat on 09/03/21.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player : Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x:0, y: -90).padding(.bottom, -70).shadow(radius: 15)
            Text(player.name).font(.system(size: 50)).fontWeight(.heavy)
            
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetail(player: players[1])
        }
    }
}

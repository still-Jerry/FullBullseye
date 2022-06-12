//
//  PointsView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 10.06.2022.
//

import SwiftUI

struct PointsView: View {
    @Binding   var alertIdsVisible: Bool
    @Binding  var sliderValue: Double
    @Binding  var game:Game
    var body: some View {
        let points = game.points(sliderValues: Int(sliderValue.rounded()))
        VStack(spacing: 10){
            AlertText(text: "The slider's value is")
            BigTargetText(text: String(Int(sliderValue.rounded())))
            AlertText(text: "your scored \(points) Points\n⚜️⚜️⚜️")
                .foregroundColor(Color.black)
            Button(action: {
                withAnimation{
                alertIdsVisible = false
                }
                game.start(points: points)
            }){
                ButtonText(text:"Start again")
            }
           
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow( radius: 10, x: 0, y: 0)
            .transition(.scale)
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var alertIdsVisible = Binding.constant(false)
    static private var sliderValue = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    static var previews: some View {
        PointsView(alertIdsVisible: alertIdsVisible, sliderValue: sliderValue, game: game)
        PointsView(alertIdsVisible: alertIdsVisible, sliderValue: sliderValue, game: game).previewLayout(.fixed(width: 568, height: 320))
    }
}

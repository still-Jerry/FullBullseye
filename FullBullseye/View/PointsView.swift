//
//  PointsView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 10.06.2022.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10){
            InstructionText(text: "The sliders value is")
            BigTargetText(text: "14n")
            Button(action: {}){
                ButtonText(text:"Start again")
            }
           
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow( radius: 10, x: 0, y: 0)
        
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView().previewLayout(.fixed(width: 568, height: 320))
    }
}

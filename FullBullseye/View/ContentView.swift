//
//  ContentView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private  var alertIdsVisible=false
    @State private var sliderValue = 70.0
    @State private var game=Game()
    var body: some View {
        ZStack{
            BackgroundView(game:$game)
        VStack{
            InstractionsView(game:$game)
            SliderText(sliderValue:$sliderValue)
            HiteMeButtonView(alertIdsVisible: $alertIdsVisible, sliderValue: $sliderValue, game: $game)
        }
        .padding()
        }
    }
    }
struct InstractionsView:View{
    @Binding  var game:Game
    var body: some View{
        VStack{
    InstructionText(text:"🎭🎭🎭\nHello, world!")
        BigTargetText(text:"\(game.target)")
        .padding(.top, 15.0)
        }
    }
}

struct SliderText:View{
    @Binding  var sliderValue: Double
    var body: some View{
        HStack{
            SliderLableText(text: "1")
            Slider(value: $sliderValue,  in: 1.0 ... 200.0)
            
            SliderLableText(text: "200")
        }
            .padding(.vertical,10)
    }
}
struct HiteMeButtonView: View{
    @Binding   var alertIdsVisible: Bool
    @Binding  var sliderValue: Double
    @Binding  var game:Game
    var body: some View{
        Button(action: {
                alertIdsVisible=true
        }) {
            Text("Hit me".uppercased())
                .bold()
        }
        
        .foregroundColor(Color.white)
        .padding(15.0)
        .background(
            ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .alert(isPresented: $alertIdsVisible,
               content: {
            return Alert(title: Text("TITILE"), message: Text("The slider value is \(sliderValue)" + "\n you score is \(game.points(sliderValues: Int(sliderValue)))"), dismissButton: Alert.Button.cancel(Text("GOUOT")))
        })
       
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color("TargetColor"), lineWidth: 5.0))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}


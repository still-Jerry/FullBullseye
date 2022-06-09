//
//  BackgroundView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 09.06.2022.
//

import SwiftUI

struct BackgroundView: View {
    @Binding  var game:Game
    var body: some View {
    VStack{
        TopView(game:$game)
        Spacer()
        ButtomView(game:$game)
        }
    .padding()
    .background(Color("BackgroundColor"))
    .edgesIgnoringSafeArea(.all)
    }
}
struct TopView: View{
    @Binding  var game:Game

    var body: some View {
        HStack{
        RoundedImageStrokedView(systemName: "arrow.counterclockwise")
        Spacer()
        RoundedImageFilledView(systemName: "list.dash")
        }
    }
}
struct NumberView: View{
    var title: String
    var text: String
    var body: some View {
        VStack{
            LableText(text:title.uppercased())
            RoundedRectedTextView(text:text)
        }
    }
}
struct ButtomView: View{
    @Binding  var game:Game

    var body: some View {
        HStack{
        NumberView(title: "Score", text: String(game.score))
        Spacer()
        NumberView(title: "Round", text: String(game.rounds))
        }
    }
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundView(game:.constant(Game()))
            
        }
        
    }
}

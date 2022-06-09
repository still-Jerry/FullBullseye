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
        ButtomView(game:$game)
        }
    }
}
struct TopView: View{
    @Binding  var game:Game

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ButtomView: View{
    @Binding  var game:Game

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game:.constant(Game()))
    }
}

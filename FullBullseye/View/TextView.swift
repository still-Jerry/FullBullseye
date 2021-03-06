//
//  TextView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 08.06.2022.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(3.0)
            .multilineTextAlignment(.center)
            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
            .lineSpacing(20.0)    }
}
struct SliderLableText:View{
    var text : String
    var body: some View{
        Text(text)
            .bold()
            .opacity(0.7)
            .frame(width: 35.0)
    }
}
struct LableText:View{
    var text : String
    var body: some View{
        Text(text)
            .bold()
            .kerning(1.2)
//            .opacity(0.7)
            .foregroundColor(Color("TargetColor"))
            .font(.caption)
    }
}
struct BigTargetText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.black)
            .kerning(-2.0)
            .foregroundColor(Color("TargetColor"))
            .bold()
            .multilineTextAlignment(.center)
    }
}
//struct BigBoldText: View {
//    var text: String
//    var body: some View {
//        Text(text.uppercased())
//            .font(.title)
//            .fontWeight(.black)
//            .kerning(2.0)
//            .foregroundColor(Color("TargetColor"))
////            .bold()
////            .multilineTextAlignment(.center)
//    }
//}
struct ButtonText: View{
    var text: String
    var body: some View{
        Text(text)
            .foregroundColor(Color("ButtonFillTextColor"))
            .bold()
            .padding(10)
            .frame(maxWidth:.infinity)
            .background(Color.accentColor)
            .cornerRadius(12.0)
            
    }
}

struct AlertText: View{
    var text: String
    var body: some View{
        Text(text)
            .foregroundColor(Color("ButtonFillBackgroudColor"))
//            .bold()
            .opacity(0.8)
//            .font(.title)
            .multilineTextAlignment(.center)
            
//            .padding(10)
//            .frame(maxWidth:.infinity)
//            .background(Color.accentColor)
//            .cornerRadius(12.0)
            
    }
}
struct DateText: View{
    var date: Date
    var body: some View{
        Text(date, style: .time
    )
            .foregroundColor(Color("ButtonFillBackgroudColor"))
//            .bold()
            .opacity(0.8)
//            .font(.title)
            .multilineTextAlignment(.center)
            
//            .padding(10)
//            .frame(maxWidth:.infinity)
//            .background(Color.accentColor)
//            .cornerRadius(12.0)
            
    }
}
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        InstructionText(text: "Instruction")
        BigTargetText(text: "Target")
        SliderLableText(text: "0")
        LableText(text: "some 456")
        AlertText(text: "Your alert text")
        ButtonText(text: "nextRound")
//        BigBoldText(text: "Leaderboard")
        }
    }
}

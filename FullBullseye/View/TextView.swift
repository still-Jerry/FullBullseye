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
            .bold()   }
}
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        InstructionText(text: "Instruction")
        BigTargetText(text: "Target")
        SliderLableText(text: "0")
        LableText(text: "some 456")
        }
    }
}

//
//  RoundView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 08.06.2022.
//

import SwiftUI

struct RoundedImageStrokedView: View {
    var systemName: String
    var body: some View {
        Image(systemName:systemName)
            .frame(width: 55.0, height: 55.0)
            .foregroundColor(Color("ButtonFillBackgroudColor"))
//            .foregroundColor(Color("TargetColor"))
            .overlay  (
                Circle()
                    .strokeBorder(Color("ButtonSrokeColor"),lineWidth: 2.0)
            )
    }
}
struct RoundedImageFilledView: View {
    var systemName: String
    var body: some View {
        Image(systemName:systemName)
            .frame(width: 55.0, height: 55.0)
        .foregroundColor(Color("ButtonFillTextColor"))
        .background(Circle()
                        .fill(Color("ButtonFillBackgroudColor")))
    }
}
struct RoundedRectedTextView: View {
    var text: String
    var body: some View {
       Text(text)
            .kerning(-0.5)
            .bold()
            .font(.title3)
            .frame(width: 75.0, height: 55.0)
        
//            .foregroundColor(Color("TargetColor"))
            .overlay  (
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color("ButtonSrokeColor"),lineWidth: 2.0)
            )
    }
}
struct RoundedIView: View {
    
    var body: some View {
        VStack{
            RoundedImageStrokedView(systemName: "arrow.counterclockwise")
            RoundedImageStrokedView(systemName: "list.dash")
            RoundedImageFilledView(systemName: "arrow.counterclockwise")
            RoundedImageFilledView(systemName: "list.dash")
            RoundedRectedTextView(text: "035")
           
        }
    }
}
struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedIView().preferredColorScheme(.dark)
        RoundedIView().preferredColorScheme(.light)

    }
}

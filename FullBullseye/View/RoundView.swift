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
struct RoundedIView: View {
    
    var body: some View {
        VStack{
            RoundedImageStrokedView(systemName: "arrow.counterclockwise")
            RoundedImageStrokedView(systemName: "list.dash")
            RoundedImageFilledView(systemName: "arrow.counterclockwise")
            RoundedImageFilledView(systemName: "list.dash")
            
        }
    }
}
struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedIView().preferredColorScheme(.dark)
        RoundedIView().preferredColorScheme(.light)

    }
}

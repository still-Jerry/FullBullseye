//
//  LeaderboardView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 10.06.2022.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
      RowView(index: 1, score: 10, date: Date())
    }
}
struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    var body: some View {
        HStack{
            RoundedText(text: String(index))
            AlertText(text: String(score))
            DateText(date: date)

//        Slider(value: .constant(50.0))
            .padding()
        }
        .background(RoundedRectangle(cornerRadius: .infinity)
                        .strokeBorder(Color("ButtonSrokeColor"),lineWidth: 1.5)
                    )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth:480)
    }
}
struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
        LeaderboardView()
            .preferredColorScheme(.dark)
    }
}

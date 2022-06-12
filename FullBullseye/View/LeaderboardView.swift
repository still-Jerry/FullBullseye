//
//  LeaderboardView.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 10.06.2022.
//

import SwiftUI

struct LeaderboardView: View {
    @Binding  var leaderboardIsShowing: Bool
    @Binding  var game: Game

    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
        VStack (spacing: 10){
            HeaderView(leaderboardIsShowing: $leaderboardIsShowing)
            LableView()
            ScrollView{
                VStack(spacing: 10){
                ForEach(game.leaderboardEntries.indices){ i in
                    RowView(index: i+1, score: game.leaderboardEntries[i].score, date: game.leaderboardEntries[i].date)
                }}
            }
        }
    }
    }
        
}
struct HeaderView:View{
    @Binding  var leaderboardIsShowing: Bool
    @Environment(\.verticalSizeClass)var verticalSizeClass
    @Environment(\.horizontalSizeClass)var horizontalSizeClass
    var body: some View{
        ZStack{
            HStack(){
                if verticalSizeClass == .regular && horizontalSizeClass == .compact{
                    BigTargetText(text: "Leaderboard".uppercased())
                        .padding(.leading)
                    Spacer()
                }else{
                    BigTargetText(text: "Leaderboard".uppercased())
                }
            }
            .padding(.top)
                HStack{
                    Spacer()
                Button(
                    action: {
                    leaderboardIsShowing = false
                }) {
                    RoundedImageFilledView(systemName: "xmark")
                        .padding(.trailing)
                }
                }
            
           
        }
    }
}
struct LableView: View{
    var body: some View{
        HStack{
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
                LableText(text: "Score")
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            LableText(text: "Date")
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth:Constants.Leaderboard.leaderboardScoreMaxRowWidth)
    }
}
struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    var body: some View {
        HStack{
            RoundedText(text: String(index))
            Spacer()
            AlertText(text: String(score))
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DateText(date: date)
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)

        }
        .background(RoundedRectangle(cornerRadius: .infinity)
                        .strokeBorder(Color("ButtonSrokeColor"),lineWidth: Constants.General.strokeWidth)
                    )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth:Constants.Leaderboard.leaderboardScoreMaxRowWidth)
        
    }
}
struct LeaderboardView_Previews: PreviewProvider {
    static private var leaderboardIsShowing = Binding.constant(false)
    static private var game = Binding.constant(Game())
    static var previews: some View {
        LeaderboardView(leaderboardIsShowing: leaderboardIsShowing, game:game)
        LeaderboardView(leaderboardIsShowing: leaderboardIsShowing, game: game).previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}

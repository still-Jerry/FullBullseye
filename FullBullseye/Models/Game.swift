//
//  Game.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 07.06.2022.
//

import Foundation
struct Game{
    var target: Int =  Int.random(in: 1...100)
    var score: Int =  0
    var rounds: Int =  1
    var leaderboardEntries: [LeaderboardEntry] = []
    func points(sliderValues: Int) -> Int {
        
        return 100-abs(sliderValues-target)
    }
    mutating func start(points: Int){
        score+=points
        target = Int.random(in: 1...100)
        rounds+=1
        addToLeaderboard(points: points)
    }
    mutating func restart(){
        score=0
        target = Int.random(in: 1...100)
        rounds=1
    }
    mutating func addToLeaderboard(points: Int){
        leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
        leaderboardEntries.sort{$0.score > $1.score}
    }
}
struct LeaderboardEntry{
    let score: Int
    let date: Date
}

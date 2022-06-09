//
//  Game.swift
//  FullBullseye
//
//  Created by Anatolich Mixaill on 07.06.2022.
//

import Foundation
struct Game{
    var target: Int =  Int.random(in: 1..<100)
    var score: Int =  0
    var rounds: Int =  1
    func points(sliderValues: Int) -> Int {
        
        return 100-abs(sliderValues-target)
    }
}

//
//  FullBullseyeTests12.swift
//  FullBullseyeTests12
//
//  Created by Anatolich Mixaill on 07.06.2022.
//

import XCTest
@testable import FullBullseye
class FullBullseyeTests12: XCTestCase {
    var game: Game!
    override func setUpWithError() throws {
        game=Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        game = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testExample() throws {
//        XCTAssertEqual(game.points(sliderValues: 50), 60)
//        XCTAssertEqual(game.points(sliderValues: 60), 70)
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
    func testScorePositive() throws {
        let guess = game.target+5
        let score = game.points(sliderValues: guess)
        XCTAssertEqual(score, 95)
    }
    func testScoreNEgative() throws {
        let guess = game.target-5
        let score = game.points(sliderValues: guess)
        XCTAssertEqual(score, 95)
    }
    func testLEaderboard(){
        game.start(points: 100)
        XCTAssertEqual(game.leaderboardEntries.count, 1)
        XCTAssertEqual(game.leaderboardEntries[0].score, 100)
        game.start(points: 200)
        XCTAssertEqual(game.leaderboardEntries.count, 2)
        XCTAssertEqual(game.leaderboardEntries[0].score, 200)

    }
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

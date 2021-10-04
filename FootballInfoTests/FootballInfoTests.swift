//
//  FootballInfoTests.swift
//  FootballInfoTests
//
//  Created by 피수영 on 2021/10/04.
//

import XCTest
@testable import FootballInfo

class FootballInfoTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testIfGetAPIDataSuccess() throws {
        let promise = expectation(description: "Completion hanlder invoked.")
        var statusCode: Int?
        var responseError: Error?
        
        let defaultSession = URLSession(configuration: .default)
        let url = URL(string: URLConstants.ESPN.football)
        let request = URLRequest(url: url!)
        
        let dataTask = defaultSession.dataTask(with: request) { (data, response, error) in
            statusCode = (response as? HTTPURLResponse)?.statusCode
            responseError = error
            promise.fulfill()
        }
        dataTask.resume()
        
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertNil(responseError)
        XCTAssertEqual(statusCode, 200)
    }
}

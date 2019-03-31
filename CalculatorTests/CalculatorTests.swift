//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by aseo on 2019/03/23.
//  Copyright © 2019年 Falcon Tech. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    var calculator: Calculator!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = Calculator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_正常系_addition_足し算() {
        XCTAssertEqual(calculator.addition(a: 100, b: 10), 110)
    }
    
    func test_正常系_subtraction_引き算() {
        XCTAssertEqual(calculator.subtraction(a: 100, b: 10), 90)
    }
    
    func test_正常系_multiplication_乗算() {
        XCTAssertEqual(calculator.multiplication(a: 100, b: 10), 1000)
    }
    
    func test_正常系_division_除算() {
        XCTAssertEqual(calculator.division(a: 100, b: 10), 10)
    }
    
    func test_異常系_division_除算_0で割る() {
        XCTAssertEqual(calculator.division(a: 100, b: 0), Int.min)
    }
}

//
//  Calculator.swift
//  Calculator
//
//  Created by aseo on 2019/03/23.
//  Copyright © 2019年 Falcon Tech. All rights reserved.
//

import Foundation
/// 四則演算をするためのクラス
public class Calculator {

    /// イニシャライザ
    public init() {}

    /// 2つの整数を加算する
    ///
    /// - Parameters:
    ///   - a: 整数
    ///   - b: 整数
    /// - Returns: a + bの結果
    public func addition(a: Int, b: Int) -> Int {
        return a + b
    }
    
    /// 2つの整数を減算する
    ///
    /// - Parameters:
    ///   - a: 整数
    ///   - b: 整数
    /// - Returns: a - bの結果
    public func subtraction(a: Int, b: Int) -> Int {
        return a - b
    }
    
    /// 2つの整数を乗算する
    ///
    /// - Parameters:
    ///   - a: 整数
    ///   - b: 整数
    /// - Returns: a * bの結果
    public func multiplication(a: Int, b: Int) -> Int {
        return a * b
    }
    
    /// 2つの整数を除算する
    ///
    /// - Parameters:
    ///   - a: 整数
    ///   - b: 整数
    /// - attention:
    /// b が0だった場合は、0割を避けるためにInt.minを先に返すようになっています
    /// - Returns: a / bの結果
    public func division(a: Int, b: Int) -> Int {
        guard b != 0 else {
            return Int.min
        }
        return a / b
    }
}

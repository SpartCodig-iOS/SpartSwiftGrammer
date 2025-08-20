//
//  HigherOrderFunctions.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

final actor HigherOrderFunctions {
   static var numbers: [Int] =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  static func changeType(_  number: [Int]  ) {
    let result = number
      .filter { $0 % 2 == 0}
      .map { String($0)}

    #logDebug("고차 함수 테스트", result)
  }

  static func changeTypeWithMyMap(_  number: [Int]  ) {
    let result = myMap(number) { n in
           n % 2 == 0 ? String(n) : ""
       }.filter { !$0.isEmpty }
    #logDebug("고차 함수 테스트 with MY MAP", result )
  }

  static func myMap<T , U>(
    _ array: [T],
    transform : (T) -> U) -> [U] {
    var result = [U]()
    for element in array {
      result.append(transform(element))
    }
    return result
  }
}


//
//  SumClosure.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

final actor SumClosure {

  static var num: Int = 3
  static var num2 : Int = 10

   // sum 을 호출 해서 파라메터로  전달
  static var sum: (Int, Int) -> String = { a, b in
    "두 수의 합은 \(a + b) 입니다"
  }

   // 계산 하는 함수 클로져 방식 1
  static func calculate(a: Int, b: Int, operation: (Int, Int) -> String) {
    #logDebug(operation(a, b))
  }

  // 계산 하는 함수 클로져 방식 2 Result 추가
  static func calculate2(a: Int, b: Int, operation: (Int, Int) -> String) -> Result<String, Error> {
    let result = operation(a, b)
    return .success(result)   
  }
}

//
//  ArrayIndex.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

final actor ArrayIndex {

   var numbers = [1, 2, 3, 4, 5]
   var koreanAlphabets =  ["가", "나", "다", "라", "마"]

  // int  배열  제거  함수
   func filterEvenIndexInts(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for (index, value) in  numbers.enumerated() {
      if index % 2 == .zero {
        result.append(value)
      }
    }
    #logDebug("int 배열 구현 ", result)
    return result
  }

  // String  배열  제거  함수
   func filterEvenIndexStrings(_ numbers: [String]) -> [String] {
    var result: [String] = []
    for (index, value) in  numbers.enumerated() {
      if index % 2 == .zero {
        result.append(value)
      }
    }
    #logDebug("String 배열 구현 ", result)
    return result

  }


  // INDEX 받는거 에 따라 변경
   func filterEvenIndexedItems<T>(_ items: [T]) -> [T] {
    var result: [T] = []
    for (index, value) in items.enumerated() {
      if index % 2 == .zero {
        result.append(value)
      }
    }
    #logDebug("\(T.self) 배열 구현", result)
    return result
  }

  // numberic 으로 제거
   func filterEvenIndexElements<T: Numeric>(_ items: [T]) -> [T] {
    var result: [T] = []
    for (index, value) in items.enumerated() {
      if index % 2 == .zero {
        result.append(value)
      }
    }
    #logDebug("\(T.self) 배열 구현", result)
    return result
  }
}

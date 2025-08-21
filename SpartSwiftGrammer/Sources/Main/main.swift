//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

let sumClosure = SumClosure()


await sumClosure.calculate(a: sumClosure.num, b: sumClosure.num2, operation: sumClosure.sum)

switch await  sumClosure.calculate2(a: sumClosure.num, b: sumClosure.num2, operation: sumClosure.sum) {
case .success(let value):
  #logDebug(value)
case .failure(let error):
  #logError("에러 발생: \(error)")
}


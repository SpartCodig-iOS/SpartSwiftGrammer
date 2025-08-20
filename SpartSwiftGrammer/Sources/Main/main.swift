//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

SumClosure.calculate(SumClosure.sum, a: SumClosure.num, b: SumClosure.num2)

switch SumClosure
  .calculate2(
    SumClosure.sum,
    a: SumClosure.num,
    b: SumClosure.num2
  ) {
  case .success(let value):
    #logDebug(value)
  case .failure(let error):
    #logError("에러 발생: \(error)")
}


HigherOrderFunctions.changeType(HigherOrderFunctions.numbers)

HigherOrderFunctions.changeTypeWithMyMap(HigherOrderFunctions.numbers)

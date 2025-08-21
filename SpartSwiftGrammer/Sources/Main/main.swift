//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

SumClosure.calculate(a: SumClosure.num, b: SumClosure.num2, operation: SumClosure.sum)

switch SumClosure
  .calculate2(
    a: SumClosure.num,
    b: SumClosure.num2,
    operation: SumClosure.sum
  ) {
  case .success(let value):
    #logDebug(value)
  case .failure(let error):
    #logError("에러 발생: \(error)")
}


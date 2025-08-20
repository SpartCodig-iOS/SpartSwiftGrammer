//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

SumClosure.calculate(SumClosure.sum, a: SumClosure.num, b: SumClosure.num2)


let filtered = ArrayIndex.removeIndexInt(ArrayIndex.numbers)
#logDebug("짝수 인덱스 제거 결과", filtered)

let filtered2 = ArrayIndex.removeIndexWithString(ArrayIndex.koreanAlphabets)
#logDebug("짝수 string 인덱스 제거 결과", filtered2)


let filtered3 = ArrayIndex.removeEvenIndex(ArrayIndex.numbers)
#logDebug("type에 따라 인덱스 제거 결과", filtered3)

let filtered4 = ArrayIndex.removeEvenIndex(ArrayIndex.koreanAlphabets)
#logDebug("type에 따라 인덱스 제거 결과", filtered4)

let filtered5 = ArrayIndex.removeEvenIndexWithNumeric(ArrayIndex.numbers)
#logDebug("type에 따라 인덱스 제거 결과", filtered5)

//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

let arrayIndex = ArrayIndex()


// actor 외부
let filtered = await arrayIndex.filterEvenIndexInts(await arrayIndex.numbers)
#logDebug("짝수 인덱스 제거 결과", filtered)

let filtered2 = await arrayIndex.filterEvenIndexStrings(await arrayIndex.koreanAlphabets)
#logDebug("짝수 string 인덱스 제거 결과", filtered2)

let filtered3 = await arrayIndex.filterEvenIndexedItems(await arrayIndex.numbers)
#logDebug("type에 따라 인덱스 제거 결과", filtered3)

let filtered4 = await arrayIndex.filterEvenIndexedItems(await arrayIndex.koreanAlphabets)
#logDebug("type에 따라 인덱스 제거 결과", filtered4)

let filtered5 = await arrayIndex.filterEvenIndexElements(await arrayIndex.numbers)
#logDebug("type에 따라 인덱스 제거 결과", filtered5)

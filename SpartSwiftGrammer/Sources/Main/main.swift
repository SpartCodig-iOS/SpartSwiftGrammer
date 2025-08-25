//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

let introducible = IntroducibleManager()

// Int는 Comparable → sortItems 사용 가능
var intBox = SortableBox(items: [5, 2, 9, 1])
intBox.sortItems()
#logDebug(intBox.items) // [1, 2, 5, 9]

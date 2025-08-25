//
//  SortableBox.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation

// 제네릭 구조체
struct SortableBox<T> {
  // 제네릭 구조체 items
  var items: [T]
}

// MARK: - 정렬 하는 함수
extension SortableBox where T: Comparable {
  mutating func sortItems() {
    items.sort()
  }
}

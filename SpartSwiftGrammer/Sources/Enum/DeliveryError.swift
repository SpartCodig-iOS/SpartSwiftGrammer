//
//  DeliveryError.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

// MARK: - 배송 에러 status
enum DeliveryError: Error {
  case invalidAddress
  case notStarted
  case systemError(reason: String)
}


extension DeliveryError: LocalizedError {
  var errorDescription: String? {
    switch self {
      case .invalidAddress:
        return "주소가 올바르지 않습니다."
      case .notStarted:
        return "배송이 아직 시작되지 않았습니다."
      case .systemError(let reason):
        return "시스템 오류가 발생했습니다: \(reason)"
    }
  }
}

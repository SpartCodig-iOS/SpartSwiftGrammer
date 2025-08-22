//
//  DeliveryStatus.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

// MARK: - 배송 상태 status
enum DeliveryStatus: CustomStringConvertible {

  case notStarted
  case inTransit(daysRemaining: Int)
  case error

  var description: String {
    switch self {
      case .notStarted:
        return "배송 시작전"
      case .inTransit(let daysRemaining):
        return "배송까지 \(daysRemaining)일 남았습니다."
      case .error:
        return"시스템 장애로 예측이 불가합니다."
    }
  }
}

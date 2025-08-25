//
//  DeliveryRunner.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

final actor DeliveryRunner {

  // MARK: - 주소 테스트 케이스
  private let testCases: [(String, DeliveryStatus)] = [
    ("", .inTransit(daysRemaining: 3)),
    ("서울시 강남구", .notStarted),
    ("서울시 서초구", .error),
    ("서울시 종로구", .inTransit(daysRemaining: 2))
  ]

  // MARK: - 배송 예상일 가져오는 함수
  func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
    guard !address.isEmpty else {
      throw DeliveryError.invalidAddress
    }
    switch status {
      case .notStarted:
        throw DeliveryError.notStarted
      case .error:
        throw DeliveryError.systemError(reason: status.description)
      case .inTransit:
        return status.description
    }
  }

  // MARK: - DeliveryRunner을 실행
  func runDelivery() {
    for (address, status) in testCases {
      do {
        let result = try predictDeliveryDay(for: address, status: status)
        #logDebug("✅ 성공: \(result)")
      } catch let error as DeliveryError {
        let message = error.errorDescription ?? "알 수 없는 에러가 발생했습니다."
        #logDebug("❌ 에러: \(message)")
      } catch {
        #logDebug("⚠️ 알 수 없는 에러: \(error.localizedDescription)")
      }
    }
  }
}

//
//  HybridCar.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation

final class HybridCar: Car {
  override init(
    brand: String,
    model: String,
    year: String,
    engine: Engine = .gasoline
  ) {
    super.init(
      brand: brand,
      model: model,
      year: year,
      engine: engine
    )
  }


  override func driving() {
    #logDebug("HybridCar 주행중")
  }

  override func stop() {
    #logDebug("HybridCar 멈추기")
  }

  override func refuel() {
    super.refuel()
    #logDebug("HybridCar 주유중")
  }

  func switchEngine(to engine: Engine) {
    self.engine = engine
    #logDebug("엔진을 \(engine)으로 바꿈")
  }
}

/*
 [상속(Inheritance)]
 - 장점: 공통 상태와 구현을 재사용하기 쉽고, 다형성(Polymorphism) 지원이 자연스럽습니다.
 - 단점: 단일 상속만 가능하고, 불필요한 속성/동작까지 물려받을 수 있어 결합도가 높아진다.

 [프로토콜(Protocol)]
 - 장점: 다중 채택 가능 → 조합과 유연성이 높다. 값 타입(Struct)에도 적용 가능.
 - 단점: 기본 구현이 없으면 중복 코드가 늘어날 수 있고, 상태 저장은 직접 구현해야 한다.
 - 필수로 구현을 해야 한다
 */

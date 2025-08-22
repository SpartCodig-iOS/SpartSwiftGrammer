//
//  ElectricCar.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

final class ElectricCar: Car {
  public override init(
    brand: String,
    model: String,
    year: String,
    engine: Engine = .electricEngine
  ) {
    super.init(
      brand: brand,
      model: model,
      year: year,
      engine: engine
    )
  }
  
  override func refuel() {
    #logDebug("전기차 충전 중 ..")
  }
  
  override func stop() {
    #logDebug("전기차 주행 중지 ")
  }
  
  override func driving() {
    #logDebug("전기차 주행중. ")
  }

}

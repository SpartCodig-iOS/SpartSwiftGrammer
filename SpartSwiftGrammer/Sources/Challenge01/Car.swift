//
//  Car.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation

class Car {
  private(set) var brand: String
  private(set) var model: String
  private(set) var year: String
  var engine: Engine

  init(
    brand: String,
    model: String,
    year: String,
    engine: Engine = .gasoline
  ) {
    self.brand = brand
    self.model = model
    self.year = year
    self.engine = engine
  }

  internal func driving() {
    #logDebug("Car 주행 중")
  }

  internal func stop() {
    #logDebug("Car 멈추기")
  }

  internal func refuel() {
    #logDebug("Car 주유중")
  }
}

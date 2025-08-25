//
//  IntroduciblesManager.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

actor IntroducibleManager {
  var introducible: [Introducible] = []

  var robot = Robot(name: "옵티머스")
  let cat = Cat(name: "나비")
  let dog = Dog(name: "바둑이")

  func introduceAll() {
    introducible.append(robot)
    introducible.append(cat)
    introducible.append(dog)
    robot.name = "피규어"

    for item in  introducible {
      item.introduce()

      switch item {
        case let robot as Robot:
          robot.batteryCharge()
        case let cat as Cat:
          cat.meow()
        case let dog as Dog:
          dog.bark()
        default:
          break
      }
    }
  }
}

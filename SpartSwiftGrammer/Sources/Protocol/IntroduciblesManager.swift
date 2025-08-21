//
//  IntroduciblesManager.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

actor IntroducibleManager {
  static var introducible: [Introducible] = []

  static var robot = Robot(name: "옵티머스")
  static let cat = Cat(name: "나비")
  static let dog = Dog(name: "바둑이")

  static func introducibles() {
    introducible.append(robot)
    introducible.append(cat)
    introducible.append(cat)
    
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

    robot.name = "피규어"
  }
  
}

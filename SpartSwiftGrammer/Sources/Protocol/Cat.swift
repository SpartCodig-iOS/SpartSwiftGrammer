//
//  Cat.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

struct Cat: Introducible {
   var name: String

  func introduce() {
    #logDebug("안녕하세요, 저는 \(name)입니다.")
  }

  func meow() {
    #logDebug("\(name): 야옹~")
  }
}


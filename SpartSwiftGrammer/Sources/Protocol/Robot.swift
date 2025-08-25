//
//  Robot.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation

struct Robot: Introducible {
  var name: String {
    didSet {
      if oldValue != name {
        #logDebug("\(name) 변경 알림")
        #logDebug("변경 이전 값: ", oldValue)
        #logDebug("변경 이후 값:",  name)
      }
    }
  }
  
  // 주석 추가
  //  func introduce() -> String{
  //    #logDebug("안녕하세요, 저는 \(name)입니다.")
  //  }

  func batteryCharge() {
    #logDebug("\(name)이(가) 충전 중입니다.")
  }
}

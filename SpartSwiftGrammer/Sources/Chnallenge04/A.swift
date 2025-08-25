//
//  A.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation
import LogMacro

final class A {
  var b: B?
  deinit {
    #logDebug("A deinit")
  }
}

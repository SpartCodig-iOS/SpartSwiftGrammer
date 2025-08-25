//
//  B.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation
import LogMacro

final class B {
  var a: A?
  var closure: (() -> Void)?
  deinit {
    #logDebug("B deinit")
  }
}

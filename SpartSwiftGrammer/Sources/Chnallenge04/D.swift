//
//  D.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation
import LogMacro

final class D {
  weak var c: C?
  var closure: (() -> Void)?
  deinit {
    #logDebug("D deinit")
  }
}



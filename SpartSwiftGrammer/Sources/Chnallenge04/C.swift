//
//  C.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation
import LogMacro

final class C {
  weak var d: D?
  deinit {
    #logDebug("D deinit")
  }
}

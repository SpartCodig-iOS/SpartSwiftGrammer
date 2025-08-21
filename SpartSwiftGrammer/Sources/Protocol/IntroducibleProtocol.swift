//
//  IntroducibleProtocol.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/21/25.
//

import Foundation
import LogMacro

protocol Introducible {
    var name: String { get set }
    func introduce()
}


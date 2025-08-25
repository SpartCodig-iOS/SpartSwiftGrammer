//
//  main.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/20/25.
//

import Foundation
import LogMacro

let memoryLeak = MemoryLeak()

await memoryLeak.leak()
await memoryLeak.memoryLeakWeak()
await memoryLeak.memorykLeakUnknown()

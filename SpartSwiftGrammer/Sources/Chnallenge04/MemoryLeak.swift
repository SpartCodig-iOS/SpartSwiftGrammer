//
//  MemoryLeak.swift
//  SpartSwiftGrammer
//
//  Created by Wonji Suh  on 8/22/25.
//

import Foundation
import LogMacro

actor MemoryLeak {
  func leak() {
    var a: A? = A()
    var b: B? = B()

    a!.b = b          // A → B (강한 참조)
    b!.a = a          // B → A (강한 참조)

    // B가 보관하는 클로저가 A를 강하게 캡처 → B → closure → A 까지 강한 참조 고리 완성
    b!.closure = {
      // A 인스턴스를 사용 (예: 단순 표시)
      #logDebug("closure uses A: \(String(describing: a))")
    }

    // 참조 해제 시도
    a = nil
    b = nil
    // ❌ deinit 출력이 안 나옴 → 순환 참조로 해제되지 않음
  }
  func memoryLeakWeak() {
    var c: C? = C()
    var d: D? = D()

    // 강제 언래핑 없이 안전하게 대입
    c?.d = d
    d?.c = c

    // 경고 제거용: 실제로 읽기 한 번
    _ = c?.d

    // 클로저에서 C를 약한 참조로 캡처하여 순환 참조 방지
    d?.closure = { [weak c] in
      guard let c else {
        #logDebug("C already deallocated")
        return
      }
      #logDebug("closure uses C: \(c)")
    }

    // 실행해보기
    d?.closure?()   // C가 살아있을 때 실행

    // C 해제 후, 클로저 재실행 → 안전하게 빠져나옴
    c = nil
    d?.closure?()   // "C already deallocated"

    // 마지막으로 D도 해제
    d = nil
    // ✅ "C deinit", "D deinit" 정상 출력
  }

  func memorykLeakUnknown() {
    var c: C? = C()
    var d: D? = D()

    c?.d = d
    d?.c = c

    // 클로저에서 C를 unowned로 캡처 (C가 반드시 살아있다는 전제)
    d?.closure = { [unowned c] in
      // 여기서는 c가 살아있다고 보장해야 함
      #logDebug("closure uses C: \(c)")
    }

    // C와 D가 모두 살아있는 동안에는 안전
    d?.closure?()   // "closure uses C: C"

    // 이제 해제
    c = nil
    d = nil
  }

}

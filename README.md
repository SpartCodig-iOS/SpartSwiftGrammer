# 📘 SpartSwiftGrammer
내배캠 Swift 문법 주차 과제 저장소

이 저장소는 Swift 문법 학습을 위해 작성된 과제 코드와 컨벤션을 포함하고 있습니다.  
코드를 작성할 때는 **컨벤션**과 **Git 전략**을 준수하며, 협업 시 일관된 개발 환경을 유지하는 것을 목표로 합니다.

---

## 📑 컨벤션
- [공통 컨벤션](./Convention/Common.md)  
  모든 Swift 코드에서 반드시 준수해야 하는 컨벤션을 정의합니다.

---

## 🐈‍⬛ Git 전략

### 🔀 Branching Strategy
- **Origin(main branch)**
- **Origin(dev branch)**
- **Local(feature branch)**

#### Branch 종류
- `main`
- `dev`
- `feature/*`
- `fix/*`

#### 작업 순서
1. Origin의 **dev** 브랜치를 Pull  
2. Local에서 **feature/과제명** 브랜치를 생성  
3. **feature** 브랜치에서 개발 진행  
4. Local → Origin으로 **feature** 브랜치 Push  
5. Origin의 **feature** → Origin의 **dev** 로 Pull Request 생성  
6. Origin **dev** 브랜치에서 충돌 해결 및 Merge  
7. Local **dev** 브랜치에서 Origin **dev**를 Fetch & Rebase  

---

## 💾 Commit 가이드
- [Commit 메시지 규칙](./.github/.gitMessage.md)  
  일관된 커밋 메시지를 작성하기 위한 가이드입니다.

---

## 📝 과제 소개
Swift 문법 학습을 기반으로, 다음 개념을 코드로 실습합니다.

- 객체지향 설계(OOP)
- 제네릭(Generics)
- ARC/메모리 관리 & 순환 참조(Retain Cycle)
- 클로저(Closures)
- 고차 함수(Map, Filter 등)
- 프로토콜 지향 프로그래밍(POP)
- 열거형 & 오류 처리(Enum & Error Handling)

### 학습 목표
- Swift 기본 문법 숙지  
- 클린 코드 및 컨벤션 기반 개발 습관 확립  
- Git Flow 기반 협업 방식 학습  
- 커밋 메시지 규칙 준수로 히스토리 관리 최적화  

---

## ✅ 진행 방법
- 각 주제별로 Swift 파일을 작성합니다.  
- 브랜치 전략에 따라 `feature/과제명` 브랜치에서 구현 후 `dev`에 PR을 보냅니다.  
- 코드 리뷰 시 **컨벤션** 및 **커밋 메시지**를 함께 확인합니다.  

---

## 🧩 과제 목록 (Checklist)

### 1) 객체지향: Car, ElectricCar, HybridCar
- Car 베이스 클래스: **브랜드/모델/연식(String), 엔진(Engine)** + 동작(`driving()`, `stop()`, `refuel()`)
- 접근 제어자 명시: `public`, `private(set)` 등
- ElectricCar(전기 엔진), HybridCar(런타임 엔진 교체 `switchEngine(to:)`)
- 상속 vs 프로토콜 채택 간단 비교 주석  

참고 파일:  
`Sources/OOP/Car.swift`, `Sources/OOP/Engines.swift`, `Sources/OOP/HybridCar.swift`

---

### 2) 프로토콜 기본 구현: Introducible
- Introducible 프로토콜 + 기본 `introduce()` 구현(extension)
- Robot은 커스텀 `introduce()` / Cat, Dog은 기본 구현 사용
- 매니저에서 다형성 호출 & 타입별 액션  

참고 파일:  
`Sources/Protocol/Introducible.swift`, `Sources/Protocol/IntroducibleManager.swift`

---

### 3) 제네릭: SortableBox
- `struct SortableBox<T> { var items: [T] }`
- `where T: Comparable`일 때만 `sortItems()` 제공 (오름차순 정렬)  

참고 파일:  
`Sources/Generics/SortableBox.swift`

---

### 4) ARC & 순환 참조
- A ↔ B 강한 참조로 **메모리 누수 재현** (`deinit` 로그 확인)
- B.closure에서 A 캡처하여 **클로저 기반 누수** 재현
- 캡처 리스트로 해결: `[weak a]` / **생명주기 보장 시** `[unowned a]` 예시  

참고 파일:  
`Sources/ARC/RetainCycle.swift`

---

### 5) 열거형 & 오류: DeliveryStatus
- `DeliveryStatus: CustomStringConvertible` (`notStarted`, `inTransit(days)`, `error`)
- `predictDeliveryDay(for:status:)`에서 `status.description` 재사용, 상황별 throw  

참고 파일:  
`Sources/Enum/Delivery.swift`

---

### 6) 클로저: SumClosure (Actor)
- `final actor SumClosure`
- 상태: `num`, `num2`
- 클로저: `sum: (Int, Int) -> String`
- 동작: `calculate(_:_:operation:)`, `calculate2(_:_:operation:) -> Result<String, Error>`

참고 파일:  
`Sources/Closures/SumClosure.swift` (업로드된 파일 사용)


### 7) 고차 함수: HigherOrderFunctions
- `final actor HigherOrderFunctions`
- 상태: `numbers`, `numbers1`
- 메서드:
  - `mapNumbers()` → map 활용
  - `changeType(_:)` → filter + map 활용
  - `changeTypeWithMyMap(_:)` → 직접 만든 `myMap` 이용
  - `myMap<T,U>(_:transform:)` → 고차 함수 직접 구현

참고 파일:  
`Sources/HigherOrderFunctions/HigherOrderFunctions.swift`

---



## 🧪 실행 예시
####  SumClosure 데모

let sumClosure = SumClosure()
await sumClosure.demo()

``` swift
// 출력 예시:
// "두 수의 합은 13 입니다"
// "두 수의 합은 13 입니다" (calculate 경유)
// "Result 성공: 두 수의 합은 13 입니다"
```

#### Introducible
``` swift
let manager = IntroducibleManager()
await manager.introduceAll()
// Cat/Dog은 기본 introduce(), Robot은 커스텀 introduce()
// 타입별 추가 동작: batteryCharge/meow/bark
```

#### SortableBox

``` swift
var box = SortableBox(items: [5, 2, 9, 1])
box.sortItems()             // [1, 2, 5, 9]

struct Person { let name: String }
var people = SortableBox(items: [Person(name:"Kim"), Person(name:"Lee")])
// people.sortItems() // ❌ 컴파일 에러 (Person이 Comparable 아님)
```

#### Retain Cycle

``` swift
leakDemo()          // deinit 로그 안 찍힘(의도적 누수)
fixedDemo_weak()    // weak로 해결 → deinit 정상
fixedDemo_unowned() // unowned(생명주기 보장 시) 해결 → 주의: 보장 깨지면 크래시
``` 

#### DeliveryStatus

``` swift

let deliveryRunner = DeliveryRunner()
await deliveryRunner.runDelivery()

❌ 에러: 주소가 올바르지 않습니다.
❌ 에러: 배송이 아직 시작되지 않았습니다.
❌ 에러: 시스템 오류가 발생했습니다: 시스템 장애로 예측이 불가합니다.
✅ 성공: 배송까지 2일 남았습니다.

```

#### HigherOrderFunctions
``` swift

let higherOrderFunctions = HigherOrderFunctions()

await higherOrderFunctions.mapNumbers()

await higherOrderFunctions.changeType(await higherOrderFunctions.numbers)

await higherOrderFunctions.changeTypeWithMyMap( higherOrderFunctions.numbers1)

["1", "2", "3", "4", "5"]
고차 함수 테스트 ["2", "4", "6", "8", "10"]
고차 함수 테스트 with MY MAP ["2", "4"]

```



####  폴더 구조
 
``` 
SpartSwiftGrammer/
├─ README.md
├─ .github/
│  └─ .gitMessage.md
│  └─Convention/
│  │  └─ Common.md
└─ Sources/
   ├─ OOP/
   │  ├─ Engines.swift
   │  ├─ Car.swift
   │  └─ HybridCar.swift
   ├─ Protocol/
   │  ├─ Introducible.swift
   │  └─ IntroducibleManager.swift
   │  └─ Cat.swift
   │  └─ Dog.swift
   │  └─ Robot.swift
   ├─ Generics/
   │  └─ SortableBox.swift
   ├─ ARC/
   │  └─ RetainCycleDemo.swift
   ├─ Enum/
   │  └─ Delivery.swift
   │  └─ DeliveryError
   │  └─DeliveryRunner
    ├─ Closures/
    │  └─ SumClosure.swift
    └─ HigherOrderFunctions/
    │  └─HigherOrderFunctions.swift
``` 

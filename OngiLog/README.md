# 📘 OngiLog – 청소 루틴 기록 iOS 앱

OngiLog는 사용자가 집 안의 여러 장소를 선택하고, 필요한 준비물과 루틴을 확인하며 **청소 루틴을 기록할 수 있는 iOS 앱**입니다.  
각 장소별 청소 루틴을 빠르게 파악하고, 완료 여부를 직관적으로 체크할 수 있습니다.

---

## ✨ 주요 기능 (Features)

### 1) 장소 선택 (Place Selection)
- `/places` API로 장소 리스트를 로드
- 상위 2개는 Large Card UI, 나머지는 Small Card UI로 자동 배치
- 장소 클릭 시 → 해당 장소의 상세 정보 페이지로 이동

### 2) 준비물 리스트 (Supplies)
- `/places/{placeId}/supplies` API로 준비물 가져오기
- 카드 형태 UI로 깔끔하게 표시

### 3) 청소 루틴 (Routine Steps)
- `/places/{placeId}/routines` API로 루틴 가져오기
- **카드 전체 탭 → 완료 상태 토글**
- 완료 시:
  - 카드 배경 회색
  - 안내 문구 회색 “완료!”
- 미완료 시:
  - 파란색 문구 “카드를 탭하여 완료 처리”

---

## 🧱 아키텍처 (Architecture)

- **SwiftUI** 기반 구조
- **async/await + URLSession** 네트워크 통신
- **Codable** 모델로 JSON 파싱
- **NavigationStack** 화면 라우팅
- 재사용 가능한 컴포넌트 기반 설계 (LargePlaceCard / SmallPlaceCard / RoutineCell 등)

---

## 🔗 API 구조

### 📍 장소
`GET /places`  
→ PlaceSummary 리스트 반환

`GET /places/{id}`  
→ 특정 장소의 모든 정보 반환  
(루틴 + 준비물 포함)

### 🧼 준비물
`GET /places/{placeId}/supplies`  
→ Supply 배열 반환

### 📝 루틴
`GET /places/{placeId}/routines`  
→ RoutineStep 배열 반환

---

## 🧩 데이터 모델 (Models)

```swift
struct PlaceSummary: Codable, Identifiable {
    var id: Int { placeId }
    let placeId: Int
    let placeName: String
    let placeImage: String
}

struct PlaceDetail: Codable, Identifiable {
    var id: Int { placeId }
    let placeId: Int
    let placeName: String
    let routines: [RoutineStep]
    let supplies: [Supply]
}

struct Supply: Codable, Identifiable {
    var id: Int { supplyId }
    let supplyId: Int
    let supplyName: String
}

struct RoutineStep: Codable, Identifiable {
    var id: Int { routineId }
    let routineId: Int
    let orderIndex: Int
    let title: String
    let description: String
    let routineImage: String
    let isComplete: Bool
}

# chartdb-ddl-sync-sandbox

ChartDB "GitHub DDL → ERD 자동 동기화" 기능 테스트용 임시 레포.

`schemas/` 아래 서비스별 스키마 스냅샷을 둔다. 각 파일 = ChartDB의 다이어그램 1개에 매핑.

| 파일 | ERD 다이어그램 |
|------|----------------|
| `schemas/user-service.sql`  | user-service |
| `schemas/order-service.sql` | order-service |

실제 운영에서는 이 파일들을 CI(`pg_dump --schema-only`)가 자동 생성/커밋한다.
샌드박스에서는 손으로 편집해 "개발자가 테이블을 바꾼" 상황을 시뮬레이션한다.

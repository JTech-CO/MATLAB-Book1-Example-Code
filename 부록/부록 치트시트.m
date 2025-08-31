% 1. 기본 환경 조작 부분 [ 8개 ]
help % 함수 도움말
doc % 상세 문서 열기
clear % 작업공간 변수 삭제
clc % 명령 창 정리
pwd % 현재 폴더 경로
cd % 폴더 이동
who % 변수 목록
whos % 변수 상세 정보

% 2. 입·출력 [ 4개 ]
disp % 값 혹은 문자열 출력
fprintf % 포맷 지정 출력
input % 사용자 입력 받기
; % 줄 끝 출력 억제

% 3. 배열 생성 [ 8개 ]
zeros % 0 행렬
ones % 1 행렬
eye % 단위행렬
rand % 균등 난수
randn % 정규분포 난수
linspace % 균일 분할 벡터
logspace % 로그 분할 벡터
diag % 대각행렬 생성∙추출

% 4. 배열 조작 [ 3개 ]
repmat % 복제해서 블록 행렬 만들기
meshgrid % 격자행렬 생성
reshape % 배열 크기 재설정

% 5. 인덱싱·검색 [ 4개 ]
: % 연속 및 간격 인덱싱
end % 마지막 인덱스 참조
find % 조건을 만족하는 인덱스 반환
논리 인덱싱 (A(L)) % true 위치 요소만 추출

% 6. 산술 연산 [ 6개 ]
[ + ] [ – ] [ * ] % 스칼라·행렬 연산
[ .* ] [ ./ ] [ .^ ] % 요소별 연산

% 7. 집계 함수 [ 4개 ]
sum % 합
mean % 평균
std % 표준편차
max % 최대값

% 8. 통계 함수 [ 2개 ]
min % 최소값
median % 중앙값

% 9. 선형대수 [ 6개 ]
inv % 역행렬
det % 행렬식
eig % 고유값·고유벡터
svd % 특이값 분해
pinv % 유사역행렬
linsolve % 직접 선형 시스템 풀이

% 10. 방정식 풀기 [ 2개 ]
roots % 다항식 근
fzero % f(x)=0 해 탐색

% 11. 미분·적분 [ 4개 ]
diff % 수치 차분(근사 도함수)
trapz % 수치 적분(사다리꼴)
cumtrapz % 누적 수치 적분
integral % 고급 수치 적분 (함수 핸들)

% 12. 보간·적합 [ 4개 ]
interp1 % 1D 보간 (linear, spline, pchip…)
spline % 스플라인 보간
polyfit % 최소제곱 다항식 계수
polyval % 다항식 평가

% 13. 그래프 [ 4개 ]
plot % 2D 선 그래프
scatter % 산점도
bar % 막대그래프
surf % 3D 서피스

% 14. 그래프 설정 [ 9개 ]
figure % 새 그래프 창
subplot % 다중 플롯 배치
title % 그래프 제목
xlabel % x축 라벨
ylabel % y축 라벨
legend % 범례
grid % 격자 켜기/끄기
axis % 축 범위·모드 설정
hold % 플롯 유지

% 15. 디버깅·성능 [ 6개 ]
tic/toc % 실행 시간 측정
dbstop % 브레이크포인트 설정
dbstep % 한 줄 실행
dbcont % 계속 실행
dbquit % 디버그 종료
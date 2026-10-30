# 1단계: Python 기본 이미지 사용
FROM python:3.11-slim

# 2단계: 컨테이너 내 작업 디렉토리 설정
WORKDIR /app

# 3단계: 호스트의 파일을 컨테이너로 복사
COPY requirements.txt .
COPY app.py .

# 4단계: 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 5단계: 포트 5000 노출 (문서화 목적)
EXPOSE 5000

# 6단계: 웹서버 실행
CMD ["python", "app.py"]

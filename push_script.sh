#!/bin/bash

# 작업 디렉토리 경로 설정
WORK_DIR=/Users/~

# 작업 디렉토리로 이동
cd "$WORK_DIR"

# 최신화
git pull upstream master

# git config core.quotepath false 명령어를 통해 한국어 파일명도 가능

# 최상위 변경 내용 add
git add "$(git ls-files --others --exclude-standard | head -1)"

# 스테이징 영역에 있는 변경사항의 최상단 폴더명 구하는 법
FILE_NAME=$(git diff --cached --name-only)
SITE_NAME=$(git diff --cached --name-only | sed 's!/.*!!' | sort -u)

# add한 파일의 이름에서 _와 _ 사이의 숫자만 추출
FILE_NUMBER=$(echo "$FILE_NAME" | awk -F'_' '{print $2}')

# 오늘의 날짜 구하기
TODAY=$(date +%y%m%d)

# commit 메시지 설정
COMMIT_MESSAGE="add: ${TODAY} ${SITE_NAME}_${FILE_NUMBER} solved"

git commit -m "${COMMIT_MESSAGE}"

# 한번만 등록 SSH로 로그인 하기 위함.
# git remote add origin_ssh git@github.com:ID/REPO_NAME.git

git push origin_ssh master

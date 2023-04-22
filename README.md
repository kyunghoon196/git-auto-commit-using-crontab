# git-auto-commit-using-crontab
Mac OS에서 쉘 스크립트와 crontab을 이용한 깃 자동 커밋

맥북 시스템설정 - 개인정보 보호 및 보안 - 전체 디스크 접근 권한에 터미널과 cron을 추가하고 허용해준다.

terminal에서 crontab을 통해 실행하므로 user.name을 전역변수로 설정한다.

ssh agent를 통해 ssh키를 생성하고 github 설정에 가서 본인 ssh키에 등록한다.

terminal에서 crontab -e 를 입력해서 다음과 같이 설정해준다. 
5 0 * * * /bin/bash /Users/~쉘 파일이 있는 경로/push_script.sh

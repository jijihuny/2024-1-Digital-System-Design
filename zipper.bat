@echo off
@chcp 65001
set SRC_DIR=%1
set OUTPUT=002_이지훈_12181819_HW_%SRC_DIR%.zip

git archive HEAD -o %OUTPUT% --format=zip --add-file %SRC_DIR%\report.pdf %SRC_DIR%/** ":!**/images/**" ":!**/*.md"

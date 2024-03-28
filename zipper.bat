@echo off
@chcp 65001
set SRC_DIR=%1
set OUTPUT=002_이지훈_12181819_HW_%SRC_DIR%.zip

git archive HEAD -o %OUTPUT% --format=zip --addfile %SRC_DIR%/*.pdf %SRC_DIR%/** ":!**/images/**" ":!**/*.md"

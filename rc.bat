# 간편 빌드 스크립트
# 사용법 1: rc sample.rs
# 사용법 2: rc sample.rs -C opt-level=3 처럼 추가 옵션 전달 가능

cls

@echo [101mrustc %* -A dead_code -A unused_variables -A unused_assignments -o out.exe [0m
@rustc %* -A dead_code -A unused_variables -A unused_assignments -o out.exe

@IF %ERRORLEVEL% EQU 0 (
	echo [37;4m[ rustc compiling success !! run out.exe ][0m
	echo.
  	out.exe
) ELSE (
	echo [37;4m[ Error !!, rustc fail to compile. ][0m
)

@echo.

@ECHO OFF
java -server -Dfile.encoding=UTF-8 -Xms600M -Xmx600M -cp "C:\$p^/$p^.jar;lib/*" com.langla.server.main.Main

REM Kiểm tra nếu ứng dụng cần khởi động lại
if exist restart.flag (
    del restart.flag
    REM Gọi script khởi động lại ở đây, ví dụ:
    call run.bat
)

REM Không có PAUSE, cửa sổ sẽ tự đóng

@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Ruby21-x64\bin\ruby.exe" "C:/Users/Mau/workspace/sweets/QQ/vendor/bundle/ruby/2.1.0/bin/spring" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Ruby21-x64\bin\ruby.exe" "%~dpn0" %*
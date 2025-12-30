copy Debug\AdventureInTsakonia_App.exe .
del AdventureInTsakonia_App.upx.exe
upx -9 -o AdventureInTsakonia_App.upx.exe AdventureInTsakonia_App.exe
@pause

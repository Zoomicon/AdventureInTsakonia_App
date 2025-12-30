copy Release\AdventureInTsakonia_App.exe AdventureInTsakonia_App.x64.exe
del AdventureInTsakonia_App.x64.upx.exe
upx -9 -o AdventureInTsakonia_App.x64.upx.exe AdventureInTsakonia_App.x64.exe
@pause

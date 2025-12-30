::See https://github.com/idzresearch/aab-to-apk-converter
::Get latest bundletool.jar from https://github.com/google/bundletool/releases

@set /p PWD_KEYSTORE="Keystore password: "
@set /p PWD_KEY="Key password: "

del AdventureInTsakonia_App.apks

java -jar bundletool.jar build-apks --bundle=Release\AdventureInTsakonia_App\bin\AdventureInTsakonia_App.aab --output=AdventureInTsakonia_App.apks --overwrite --mode=universal --ks=%UserProfile%\Zoomicon\Android\Keystore.keystore --ks-pass=pass:%PWD_KEYSTORE% --ks-key-alias=AdventureInTsakonia --key-pass=pass:%PWD_KEY%

echo Open the .apks with a ZIP extractor (or rename to .zip) and get the universal .apk from there (should rename to AdventureInTsakonia_App.universal.apk). Can also call touch on the .apk filename else it has very old/default date

@pause

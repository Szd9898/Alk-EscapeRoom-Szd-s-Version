cd ..

rmdir /S /Q ".vs"
rmdir /S /Q "Binaries"
rmdir /S /Q "DerivedDataCache"
rmdir /S /Q "Intermediate"

pushd Plugins
for /D /r %%D in (*) do (
	if "%%~nxD"=="Binaries" rmdir /S /Q "%%~D"
)
popd

echo f | xcopy "Saved\Config\Windows\EditorPerProjectUserSettings.ini" "Temp\EditorSettings.ini" /v /y
pushd Saved
rmdir /S /Q "Autosaves"
rmdir /S /Q "Config"
rmdir /S /Q "Logs"
popd
echo f | xcopy "Temp\EditorSettings.ini" "Saved\Config\Windows\EditorPerProjectUserSettings.ini" /v /y
rmdir /S /Q "Temp"

del "*.sln"
del "*.sln.DotSettings.user"
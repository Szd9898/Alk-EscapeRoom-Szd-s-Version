cd ..
rmdir /S /Q ".vs"
rmdir /S /Q "Binaries"

pushd Plugins
for /D /r %%D in (*) do (
	if "%%~nxD"=="Binaries" rmdir /S /Q "%%~D"
)
popd

del "*.sln"
del "*.sln.DotSettings.user"
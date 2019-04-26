set configuration="Release"

set qtpath64="C:\Qt\5.11.3\msvc2015_64"
set arch64=x64
set dir64=build_x64

md %dir64%
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %arch64%
cmake -G "Visual Studio 14 2015 Win64" -DCMAKE_PREFIX_PATH=%qtpath64% -DCMAKE_BUILD_TYPE=%configuration% -B%dir64% -H.

cmake --build %dir64% --config %configuration% --target package

pause
set configuration="Release"
  
set qtpath32="C:\Qt\5.11.3\msvc2015"
set arch32=x86
set dir32=build_x86

md %dir32%
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %arch32%
cmake -G "Visual Studio 14 2015" -DCMAKE_PREFIX_PATH=%qtpath32% -DCMAKE_BUILD_TYPE=%configuration% -B%dir32% -H.

cmake --build %dir32% --config %configuration% --target package

pause
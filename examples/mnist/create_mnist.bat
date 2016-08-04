@set EXAMPLE=..\..\examples\mnist
@set DATA=..\..\data\mnist
@set BUILD=..\..\Build\Win32\Release

@set BACKEND=lmdb

set PATH=%PATH%;C:\Program Files (x86)\HDF_Group\HDF5\1.8.17\bin
set PATH=%PATH%;C:\Program Files (x86)\gflags\Lib
set PATH=%PATH%;C:\git\lightningdb-win\Release
set PATH=%PATH%;C:\lib\opencv-2.4.13\opencv\sources\new_build\bin\Release

@echo "Creating %BACKEND%..."

rmdir "%EXAMPLE%\mnist_train_%BACKEND%"
rmdir "%EXAMPLE%\mnist_test_%BACKEND%"

%BUILD%\convert_mnist_data.exe %DATA%\train-images.idx3-ubyte %DATA%\train-labels.idx1-ubyte %EXAMPLE%\mnist_train_%BACKEND% --backend=%BACKEND%
%BUILD%\convert_mnist_data.exe %DATA%\t10k-images.idx3-ubyte %DATA%\t10k-labels.idx1-ubyte %EXAMPLE%\mnist_test_%BACKEND% --backend=%BACKEND%

echo "Done."

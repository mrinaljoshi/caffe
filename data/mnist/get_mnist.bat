set mypath=%cd%

FOR %%i IN (train-images-idx3-ubyte train-labels-idx1-ubyte t10k-images-idx3-ubyte t10k-labels-idx1-ubyte) DO (
   bitsadmin /transfer "Downloading MNIST %%i" http://yann.lecun.com/exdb/mnist/%%i.gz %mypath%\%%i.gz
)
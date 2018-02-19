#! /bin/sh

echo "Attempting to build WebGL"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectPath "$(pwd)/" \
	-executeMethod WebGLBuilder.build \
	-quit

rc1=$?
echo "Build logs (Web)"
cat $(pwd)/unity.log
exit $(($rc1))
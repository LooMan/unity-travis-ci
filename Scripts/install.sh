#! /bin/sh

# Download Unity3D installer into the container
# The below link will need to change depending on the version, this one is for 2017.3.1
# Refer to https://unity3d.com/get-unity/download/archive and find the link pointed to by Mac "Unity Editor"
echo 'Downloading Unity 2017.3.1 pkg:'
curl --retry 5 -o Unity.pkg https://netstorage.unity3d.com/unity/fc1d3344e6ea/MacEditorInstaller/Unity-2017.3.1f1.pkg
if [ $? -ne 0 ]; then { echo "Download failed"; exit $?; } fi

echo 'Downloading Unity2017.3.1 WebGL Build Support pkg:'
curl --retry 5 -o Unity_web.pkg http://netstorage.unity3d.com/unity/fc1d3344e6ea/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-2017.3.1f1.pkg
if [ $? -ne 0 ]; then { echo "Download failed"; exit $?; } fi

# Run installer(s)
echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /
echo 'Installing Unity_web.pkg'
sudo installer -dumplog -package Unity_web.pkg -target /
echo "AGENT_WORKFOLDER is $AGENT_WORKFOLDER"
echo "AGENT_WORKFOLDER contents:"
ls -1 $AGENT_WORKFOLDER
echo "AGENT_BUILDDIRECTORY is $AGENT_BUILDDIRECTORY"
echo "AGENT_BUILDDIRECTORY contents:"
ls -1 $AGENT_BUILDDIRECTORY
echo "SYSTEM_DEFAULTWORKINGDIRECTORY is $SYSTEM_DEFAULTWORKINGDIRECTORY"
echo "SYSTEM_DEFAULTWORKINGDIRECTORY contents:"
ls -1 $SYSTEM_DEFAULTWORKINGDIRECTORY
echo "BUILD_ARTIFACTSTAGINGDIRECTORY is $BUILD_ARTIFACTSTAGINGDIRECTORY"
echo "BUILD_ARTIFACTSTAGINGDIRECTORY contents:"
ls -1 $BUILD_ARTIFACTSTAGINGDIRECTORY


brew install nasm

# install Csound, didn't think this was needed, but Cmake fails without it..
curl -L -o csound6.13.0-MacOS_x86_64.dmg 'https://github.com/csound/csound/releases/download/6.13.0/csound6.13.0-MacOS_x86_64.dmg'
ls
hdiutil attach csound6.13.0-MacOS_x86_64.dmg
cp -R /Volumes/Csound6.13.0/ Csound
hdiutil detach /Volumes/Csound6.13.0/
cd Csound
sudo installer -pkg csound6.13.0-MacOS_x86_64.pkg -target /

#return to main working dir after installing Csound
cd $SYSTEM_DEFAULTWORKINGDIRECTORY

ls



mkdir build
cd build
cmake ..
make
ls


cp *.dylib $BUILD_ARTIFACTSTAGINGDIRECTORY

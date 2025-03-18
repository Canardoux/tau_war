#!/bin/bash
if [ -z "$1" ]; then
        echo "Correct usage is $0 <Version> "
        exit -1
fi



VERSION=$1
VERSION_CODE=${VERSION#./}
VERSION_CODE=${VERSION_CODE#+/}

#cd ../tau_webkit
#bin/pub.sh $VERSION
#if [ $? -ne 0 ]; then
#    echo "Error: analyze example/lib"
#    exit -1
#fi
#cd ../tau_war

#cp -v ../tauwar-doc/index.md README.md
#gsed -i '1,6d' README.md

echo '************************* Pub tau_war ************************'


bin/setver.sh $VERSION
bin/reldev.sh REL


flutter analyze lib
if [ $? -ne 0 ]; then
    echo "Error: analyze ./lib"
    ###exit -1
fi
dart format lib
if [ $? -ne 0 ]; then
    echo "Error: format ./lib"
    exit -1
fi


cd example
flutter analyze lib
if [ $? -ne 0 ]; then
    echo "Error: analyze example/lib"
    ###exit -1
fi

#dart format lib
#if [ $? -ne 0 ]; then
#    echo "Error: format example/lib"
    #exit -1
#fi
cd ..


dart doc .



git add .
git commit -m "Tauwar : Version $VERSION"
git pull origin
git push origin
if [ ! -z "$VERSION" ]; then
    git tag -f $VERSION
    git push  -f origin $VERSION
fi



flutter pub publish
if [ $? -ne 0 ]; then
    echo "Error: flutter pub publish[tau_war]"
    read -p "Press enter to continue"
    exit -1
fi


read -p "Press enter to continue"




echo 'E.O.J for pub tau_war'

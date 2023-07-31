#!/usr/bin/env bash

pkgbuild --analyze --root ./hangman HangWhileUCan.plist

pkgbuild --root ./hangman \
    --component-plist HangWhileUCan.plist \
    HangWhileUCan.pkg

productbuild --synthesize \
    --package HangWhileUCan.pkg \
    Distribution1.xml

rm Distribution1.xml

pkgbuild --root "./hangman" \
    --component-plist "./HangWhileUCan.plist" \
    --scripts "./Scripts" \
    --identifier "com.BlackHorse.hang" \
    --version "1.0.0" \
    --install-location "/Applications" \
    "./HangWhileUCan.pkg"

productbuild --distribution "./Distribution.xml"  \
    --package-path "./hangman/" \
    --resources "./Resources" \
    "HangWhileUCan-tmp1.pkg"


rm -r HangWhileUCan.pkg
cp HangWhileUCan-tmp1.pkg HangWhileUCan.pkg
rm -r HangWhileUCan-tmp1.pkg
rm HangWhileUCan.plist

echo "All done."


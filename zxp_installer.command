#!/bin/bash
clear
echo "- Drag and drop/type path to your extension file (ZXP) to this window then hit ENTER/RETURN."
read -p "" "path"
cd ~
mkdir ~/extracted_files
cd ~/extracted_files
clear
echo "- Path detected: $path"
read -p "- What do you want to specify your extension as? (don't create whitespace): " "name"
mkdir $name
cp $path $name
cd $name
tar -xf *.zxp
rm -rf *.zxp
clear
echo "- Because of modifying root partition, you'll need to enter your password to gain supersuer access."
sudo mv ~/extracted_files/* /Library/Application\ Support/Adobe/CEP/extensions
rm -rf ~/extracted_files
clear
echo "- All done!"
echo "- Please test your extension by launching After Effects."
echo "- Created by midhrt (my carrd link: https://kznny.carrd.co)"
exit 0
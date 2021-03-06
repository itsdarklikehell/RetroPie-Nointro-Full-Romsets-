#!/bin/bash
################ config ################ 
CONFIGURE(){
ROMSDIR=~/RetroPie/roms
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "This script wil download any selected No-Intro romset to $ROMSDIR/*systemname*/No-Intro"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS(){
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Making directory $ROMSDIR/$SETNAME/No-Intro"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
mkdir -p $ROMSDIR/$SETNAME/No-Intro
}
DLSET(){
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Downloading $SETLINK to $ROMSDIR/$SETNAME/No-Intro/$SETNAME.rar"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
wget -c $SETLINK -O $ROMSDIR/$SETNAME/No-Intro/$SETNAME.rar
}
EXTRACT(){
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Extracting $SETNAME.rar to $ROMSDIR/$SETNAME/No-Intro"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
#unrar command [-switch_1 -switch_N] archive [files...] [path...]
cd $ROMSDIR/$SETNAME
unrar x -y $ROMSDIR/$SETNAME/No-Intro/$SETNAME.rar $ROMSDIR/$SETNAME/No-Intro
unzip $ROMSDIR/$SETNAME/No-Intro/*.zip -d $ROMSDIR/$SETNAME/No-Intro


unzip $ROMSDIR/$SETNAME/*.zip -d $ROMSDIR/$SETNAME
CLEANUP
}
}
CLEANUP(){
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Removing $SETNAME.rar from $ROMSDIR/$SETNAME/No-Intro"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
#rm $ROMSDIR/$SETNAME/No-Intro/$SETNAME.rar
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "removing remaining *.zip files from $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
#rm $ROMSDIR/$SETNAME*.zip

}
CONFIGURE
################ config end ################
C64(){
SETNAME="c64"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Commodore 64 (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Commodore%20-%2064.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Commodore\ -\ 64/*.* $ROMSDIR/$SETNAME
}
GAMEBOY(){
SETNAME="gameboy"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Gameboy (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Nintendo%20-%20Game%20Boy.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Game\ Boy/*.* $ROMSDIR/$SETNAME
}
GAMEBOYADVANCED(){
SETNAME="gba"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Gameboy Advance (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK=""
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Game\ Boy\ Advanced/*.* $ROMSDIR/$SETNAME
}
GAMEBOYCOLOR(){
SETNAME="gbc"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Gameboy Color (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Nintendo%20-%20Game%20Boy%20Color.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Game\ Boy\ Color/*.* $ROMSDIR/$SETNAME
}
NINTENDO(){
SETNAME="nes"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Nintendo (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Nintendo%20-%20Nintendo%20Entertainment%20System.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Nintendo\ Entertainment\ Systen/*.* $ROMSDIR/$SETNAME
}
NINTENDO64(){
SETNAME="n64"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Nintendo 64 (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK=""
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Nintendo\ 64/*.* $ROMSDIR/$SETNAME
}
SEGA32(){
SETNAME="sega32x"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Sega 32X (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Sega%20-%2032X.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Sega\ -\ 23X/*.* $ROMSDIR/$SETNAME
}
SEGAGAMEGEAR(){
SETNAME="gamegear"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Sega Game Gear (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Sega%20-%20Game%20Gear.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Sega -\ Game\ Gear/*.* $ROMSDIR/$SETNAME
}
SEGAGENESIS(){
SETNAME="genesis"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Sega Genesis (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Sega%20-%20Mega%20Drive%20-%20Genesis.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Sega\ -\ Mega\ Drive\ -\ Genesis/*.* $ROMSDIR/$SETNAME
}
SEGAMASTERSYSTEM(){
SETNAME="mastersystem"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Sega Master System (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Sega%20-%20Master%20System%20-%20Mark%20III.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Sega\ -\ Master\ System\ -\ Mark\ III/*.* $ROMSDIR/$SETNAME
}
SUPERNINTENDO(){
SETNAME="snes"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "Super Nintendo (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Nintendo\ -\ Super\ Nintendo\ Entertainment\ System/*.* $ROMSDIR/$SETNAME
}
WONDERSWAN(){
SETNAME="wonderswan"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
echo "WonderSwan And Color (All Regions) $ROMSDIR/$SETNAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
MAKEDIRS
SETLINK="https://download.loveroms.com/roms/sets/Bandai%20-%20WonderSwan%20and%20Color.rar"
DLSET
EXTRACT
mv $ROMSDIR/$SETNAME/No-Intro/Bandai\ -\ WonderSwan\ and\ Color/*.* $ROMSDIR/$SETNAME
}
################ execution ################
C64
GAMEBOY
#GAMEBOYADVANCED
GAMEBOYCOLOR
NINTENDO
#NINTENDO64
SEGA32
SEGAGAMEGEAR
SEGAGENESIS
SEGAMASTERSYSTEM
SUPERNINTENDO
WONDERSWAN
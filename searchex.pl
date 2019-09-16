#!/usr/bin/perl

use HTTP::Request;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;

system('cls');

system('title Searchex');



print"\n";
print color 'bold cyan';
print "..######..########....###....########...######..##.....##.########.##.....##\n";
print ".##....##.##.........##.##...##.....##.##....##.##.....##.##........##...##.\n";
print ".##.......##........##...##..##.....##.##.......##.....##.##.........##.##..\n";
print "..######..######...##.....##.########..##.......#########.######......###...\n";
print ".......##.##.......#########.##...##...##.......##.....##.##.........##.##..\n";
print ".##....##.##.......##.....##.##....##..##....##.##.....##.##........##...##.\n";
print "..######..########.##.....##.##.....##..######..##.....##.########.##.....##\n";
print "............................................................................\n";
print "......................................................Coded.By.White.Sec....\n";
print "............................................................................\n";
print "......................................................Founder.Of.BSEC.......\n";
print "............................................................................\n";
                                                
                                        
print "\n";


 print color 'white';
print "Write the DNS: \n\n";
print "DNS: ";

$site=<STDIN>;

chomp $site;



print "\n";

print "Write 'bsec' to confirm the script\n\nConfirm Script: ";

$codigo = <STDIN>;

chomp($codigo);



if ( $site !~ /^http:/ ) {

$site = 'http://' . $site;

}

if ( $site !~ /\/$/ ) {

$site = $site . '/';

}

print "\n\n";
print "Script Confirmed:";

print "\n\n";

if($codigo eq "bsec" || $codigo eq "bsec"){



@dir2=('robots.txt',
);



foreach $tipos(@dir2){



$final=$site.$tipos;



my $req=HTTP::Request->new(GET=>$final);

my $ua=LWP::UserAgent->new();

$ua->timeout(30);

my $resposta=$ua->request($req);



if($resposta->content =~ /User-agent:/ ||
$resposta->content =~ /Disallow:/ ||
$resposta->content =~ /Allow:/ ||
$resposta->content =~ /Sitemap:/
){
  print color 'bold green';
print " \n [+] HTTP 200 - $final\n\n";
  print color 'reset';
}else{
print color 'bold red';
print "\n [-] HTTP 404 - $final\n\n\n";
print color 'reset';

}

}

}
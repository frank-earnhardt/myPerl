use strict;
use warnings;
use Getopt::Std;
my $dt = sprintf "%0.4d_%0.2d_%0.2d",(localtime())[5]+1900,(localtime())[4] +1,(localtime())[3];
my $tm = sprintf "%0.2d%0.2d%0.2d",(localtime())[2,1,0];
my $now = sprintf "%0.2d/%0.2d/%0.4d %0.2d:%0.2d:%0.2d",(localtime())[4] +1,(localtime())[3],(localtime())[5]+1900,(localtime())[2,1,0];
sub Usage {
    print "   USAGE\n";
    print "        $0 -m<Mode> -d<debugInt> -h\n";
    print "           -m<Mode>        ~ Mode Typical Nothing\n";
    print "                             -- CRON ~ Skip Human Prompts\n";
    print "                             -- SHOW ~ Skip Actual Execution\n";
    print "           -d<debugInt>    ~ debugInt Indicator\n";
    print "           -h              ~ Shows Usage\n";
}
use vars qw($opt_m $opt_d $opt_h);
getopts('m:d:h');
my $MODE           = $opt_m || "";
my $DEBUG          = $opt_d || 0;
if ($opt_h) {&Usage; exit 0;}
print "Hello World\n";
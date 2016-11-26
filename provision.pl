#!/usr/bin/perl
use strict;
use warnings;

die "Usage: $0 hostname\n" if (@ARGV != 1);

update_distribution();
set_gpu_mem();
set_hostname($ARGV[0]);
install_docker();

print "\nDon't forget to set a new password!\n";

exit 0;

sub update_distribution {
    print scalar((caller(0))[3]) . "...\n";
    die if system("apt-get -qq update");
}

sub set_gpu_mem {
    print scalar((caller(0))[3]) . "...\n";
    my $boot_config = "/boot/config.txt";
    open(OLD, $boot_config) or die "Cannot open $boot_config\n";
    my @lines = <OLD>;
    close(OLD);

    my @new_file_contents;
    foreach my $line (@lines) {
	if ($line =~ m/gpu_mem=\d+/) {
	    $line = "gpu_mem=16\n";
	} 
	push(@new_file_contents, $line);
    }

    open (NEW, ">/tmp/test") or die "Cannot write new $boot_config\n";
    print NEW @new_file_contents;
    close(NEW);
}

sub set_hostname {
    print scalar((caller(0))[3]) . "...\n";
    my $hostname = shift();
    die if system("echo $hostname > /etc/hostname");    
}


sub install_docker {
    die if system("curl -sSL get.docker.com | sh");
    die if system("systemctl enable docker");
    die if system("usermod -aG docker pi");
}

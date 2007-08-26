=begin pod

=head1 NAME

Sys::Statistics::Linux::CpuStats - Collect linux cpu statistics.

=head1 SYNOPSIS

   use Sys::Statistics::Linux::CpuStats;

   my $lxs = Sys::Statistics::Linux::CpuStats.new;
   $lxs.init;
   sleep 1;
   my %stats = $lxs.get;

=head1 DESCRIPTION

Sys::Statistics::Linux::CpuStats gathers cpu statistics from the virtual F</proc> filesystem (procfs).

For more informations read the documentation of the front-end module L<Sys::Statistics::Linux>.

=head1 CPU STATISTICS

Generated by F</proc/stat> for each cpu (cpu0, cpu1 ...). F<cpu> without a number is the summary.

   user    -  Percentage of CPU utilization at the user level.
   nice    -  Percentage of CPU utilization at the user level with nice priority.
   system  -  Percentage of CPU utilization at the system level.
   idle    -  Percentage of time the CPU is in idle state.
   iowait  -  Percentage of time the CPU is in idle state because an i/o operation is waiting for a disk.
              This statistic is only available by kernel versions higher than 2.4. Otherwise this statistic
              exists but will be ever 0.
   total   -  Total percentage of CPU utilization (user + nice + system).

=head1 METHODS

=head2 new()

Call C<new()> to create a new object.

   my $lxs = Sys::Statistics::Linux::CpuStats.new;

=head2 init()

Call C<init()> to initialize the statistics.

   $lxs.init;

=head2 get()

Call C<get()> to get the statistics. C<get()> returns the statistics as a hash.

   my %stats = $lxs.get;

=head1 EXAMPLE

    my $lxs = Sys::Statistics::Linux::CpuStats.new;
    $lxs.init;
    my $header = 0;

    loop {
        sleep(1);
        my %stats = $lxs.get;
        my $time  = localtime();

        if $header == 0 {
            $header = 20;
            print  ' ' x 20;
            printf "%-8s%8s%8s%8s%8s%8s%8s\n", <cpu user nice system total iowait idle>;
        }

        for %stats.keys.sort -> $cpu {
            my %cstat := %stats{$cpu};
            printf "%04d-%02d-%02d %02d:%02d:%02d %-8s%8s%8s%8s%8s%8s%8s\n",
                   $time.<year month day hour min sec>, $cpu,
                   %cstat<user nice system total iowait idle>;
        }

        $header--;
    }

=head1 EXPORTS

No exports.

=head1 SEE ALSO

B<proc(5)>

=head1 REPORTING BUGS

Please report all bugs to <jschulz.cpan(at)bloonix.de>.

=head1 AUTHOR

Jonny Schulz <jschulz.cpan(at)bloonix.de>.

=head1 COPYRIGHT

Copyright (c) 2006, 2007 by Jonny Schulz. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=end pod

#package Sys::Statistics::Linux::CpuStats;
#our $VERSION = '0.08';

class Sys::Statistics::Linux::CpuStats-0.001;

use v6-alpha;

#use strict;
#use warnings;
#use Carp qw(croak);

sub croak (*@m) { die @m } # waiting for Carp::croak

#sub new {
#   my $class = shift;
#   my %self = (
#      files => {
#         stat => '/proc/stat',
#      }
#   );
#   return bless \%self, $class;
#}

has Hash $.files = {};
has Hash $.inits = {};
has Hash $.stats = {};

submethod BUILD () {
    $.files<stat> = '/proc/stat';
}

#sub init {
#   my $self = shift;
#   $self->{init} = $self->_load;
#}

method init () {
    self.inits = self.load();
}

#sub get {
#   my $self  = shift;
#   my $class = ref $self;
#
#   croak "$class: there are no initial statistics defined"
#      unless exists $self->{init};
#
#   $self->{stats} = $self->_load;
#   $self->_deltas;
#   return $self->{stats};
#}

method get () {
    unless self.inits.defined {
        croak("there are no initial statistics defined");
    }
    self.stats = self.load;
    self.deltas();
    return self.stats;
}

#
# private stuff
#

#sub _load {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   my (%stats, $iowait, $irq, $softirq);
#
#   open my $fh, '<', $file->{stat} or croak "$class: unable to open $file->{stat} ($!)";
#
#   while (my $line = <$fh>) {
#      if ($line =~ /^(cpu.*?)\s+(.*)$/) {
#         my $cpu = \%{$stats{$1}};
#         (@{$cpu}{qw(user nice system idle)}, $iowait, $irq, $softirq) = split /\s+/, $2;
#         # iowait, irq and softirq are only set 
#         # by kernel versions higher than 2.4
#         $cpu->{iowait}  = $iowait  || 0;
#         $cpu->{irq}     = $irq     if defined $irq;
#         $cpu->{softirq} = $softirq if defined $softirq;
#      }
#   }
#
#   close($fh);
#   return \%stats;
#}

my method load () {
    my $file = self.files<stat>;
    my $statfh = open($file, :r) or croak("unable to open $file: $!");
    my (%stats, $iowait, $irq, $softirq);

    for =$statfh -> $line {
        next unless $line ~~ /^(cpu\d*?)\s+(.*)/;
        my %cpu := %stats{$0};
        %cpu<user nice system idle iowait irq softirq> = (~$1).comb;
        %cpu<iowait>  = 0 unless %cpu<iowait>.defined;
        %cpu<irq>     = 0 unless %cpu<irq>.defined;
        %cpu<softirq> = 0 unless %cpu<softirq>.defined;
# slices are nyi correct - waiting...
#        (%cpu<user nice system idle>, $iowait, $irq, $softirq) = (~$1).split(rx/\s+/);
#        %cpu<iowait>  = $iowait  if $iowait.defined;
#        %cpu<irq>     = $irq     if $irq.defined;
#        %cpu<softirq> = $softirq if $softirq.defined;
    }

    $statfh.close;
    return %stats;
}

#sub _deltas {
#   my $self  = shift;
#   my $class = ref $self;
#   my $istat = $self->{init};
#   my $lstat = $self->{stats};
#
#   foreach my $cpu (keys %{$lstat}) {
#      my $icpu = $istat->{$cpu};
#      my $dcpu = $lstat->{$cpu};
#      my $uptime;
#
#      while (my ($k, $v) = each %{$dcpu}) {
#         croak "$class: different keys in statistics"
#            unless defined $icpu->{$k};
#         croak "$class: value of '$k' is not a number"
#            unless $v =~ /^\d+$/ && $dcpu->{$k} =~ /^\d+$/;
#         $dcpu->{$k} -= $icpu->{$k};
#         $icpu->{$k}  = $v;
#         $uptime += $dcpu->{$k};
#      }
#
#      foreach my $k (keys %{$dcpu}) {
#         if ($dcpu->{$k} > 0) {
#            $dcpu->{$k} = sprintf('%.2f', 100 * $dcpu->{$k} / $uptime);
#         } else {
#            $dcpu->{$k} = sprintf('%.2f', $dcpu->{$k});
#         }
#      }
#
#      $dcpu->{total} = sprintf('%.2f', $dcpu->{user} + $dcpu->{nice} + $dcpu->{system});
#      delete $dcpu->{irq}     if exists $dcpu->{irq};
#      delete $dcpu->{softirq} if exists $dcpu->{softirq};
#   }
#}

my method deltas () {
    my %inits = self.inits;
    my %stats = self.stats;

    for %stats.kv -> $cpu, %scpu {
        my %icpu   = %inits{$cpu};
        my $uptime = ();

        for %scpu.kv -> $k, $v {
            unless %icpu.exists($k) {
                croak("init key '$k' doesn't exists");
            }
            %scpu{$k} -= %icpu{$k};
            %icpu{$k}  = $v;
            $uptime   += %scpu{$k};
        }

        for %scpu.kv -> $k, $v {
            if $v > 0 {
                %scpu{$k} = sprintf('%.2f', 100 * $v / $uptime);
            } else {
                %scpu{$k} = sprintf('%.2f', $v);
            }
        }

        %scpu<total> = sprintf('%.2f', %scpu<user> + %scpu<nice> + %scpu<system>);
        %scpu.delete('irq')     if %scpu.exists('irq');
        %scpu.delete('softirq') if %scpu.exists('softirq');
    }
}

1;

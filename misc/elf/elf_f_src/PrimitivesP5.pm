
sub header is p5 {'use Math::Trig qw();'}
header();


class Num {
sub pi() is p5 {'Math::Trig::pi();'}
}

$*PID = (sub () is p5 {'$$'}).();

package GLOBAL { # sub *f(){} isn't working yet.

  sub say(*@args) is p5 {
   'use Scalar::Util "openhandle";
    my $currfh = select();
    my($handle,$warning);
    {no strict "refs"; $handle = openhandle($_[0]) ? shift : \*$currfh;}
    @args = $_ unless @args;
    @args = map {
      my $ref = ref($_);
      ($ref && $ref eq "ARRAY") ? ARRAY::flatten_recursively($_) : $_
    } @args;
    local $SIG{__WARN__} = sub { $warning = join q{}, @_ };
    my $res = print {$handle} @args, "\n";
    return $res if $res;
    $warning =~ s/[ ]at[ ].*//xms;
    Carp::croak $warning;
    '
  }

}

use v6;

=begin pod
=head1 NAME

Perl 6 Cookbook: Escaping Characters

=head1 Summary

Sometimes strings need to have special characters escaped before operations are
performed, or before output to another script or program.

=head1 Solution

In some cases you can use a substitution rule to escape characters. Many quoting
requirements look deceptively easy though and therefore it's usually good to 
find an example where the problem has been solved for you already, for example:

HTML::Entities         For HTML encoding
Placeholder binding    For SQL quoting
system/exec calls      For shell quoting

    # backslash escaping
    $var ~~ s:g/(<[CHARLIST]>)/\\$0/;

    # double-character escaping
    $var ~~ s:g/(<[CHARLIST]>)/$0$0/;

XXX Oh, (<[]>) is just horrible!
    -- not sure what you're suggesting here? ~gcomnz
XXX Nothing really - just wanted to complain again :)

=head1 Details

For a quick escaping of one character:

    $var ~~ s:g/%/%%/g;

Escaping quotes for the shell:

    # use parameters to system and exec commands
    # TODO

XXX Don't use this example, or explicitly note that the result is UNSAFE for
shell usage. People might get the impression that quote escaping is enough.

    -- agreed, i'm removing it and just putting the "right way" ~gcomnz

Escaping for VMS DCL:

    $string = q[Mom said, "Don't do that."];
    $string ~~ s:g/(<['"]>)/$0$0/g;
XXX I don't get at all why this example is included, seems very
    obscure ~gcomnz

Escape anything besides A-Z:

    # TODO: Keep up to date with moving target of range and 
    # negative matching
    $string ~~ s:g/(<-[A..Z]>)/\\$0/;

You can escape all non-word metacharacters using the quotemeta function:

    # both equivalent:
    $string ~ "this is\\ a\\ test\\!";
    $string ~ "this " ~ quotemeta("is a test!");

To interpolate quotemeta directly into a string, use a closure:

    # with liberal interpolation
    $string = "this {quotemeta('is a test!')}";
    # with closure-only interpolation
    $string = q:c/this {quotemeta('is a test!'}/;

To encode a string for HTML, use the encode_entities() function from
HTML::Entities: (See XXX for more discussion.)

    use HTML::Entities;
    my $string = "V�re norske tegn b�r �res"; 
    say encode_entities($string);
    # output: "V&aring;re norske tegn b&oslash;r &#230;res";

TODO: Add an example for safe SQL quoting XXX Or not. This "safe" thing is
really dangerous, as it strengthens the beliefs of naive programmers, and
discussion of what really needs to be done is too in depth for this document.
    -- agreed, however I was going to do similar to HTML::Entities example
    -- and use a SQL entities quoting module, but not until one exists
    -- in pugs/ext. For a cookbook entry it certainly seems useful to point
    -- people to a good module that does the right thing ~gcomnz
XXX The right thing when it comes to SQL values is to leave things up to
something in DBI (the DBD) that handles placeholders.
    -- Good point. I tried to think of some reasonably useful
        circumstance where it would be handy to escape SQL, but
        can't think of one that's useful for a cookbook. I'll
        point people to placeholder binding only ~gcomnz

=end pod

# Do not edit this file - Generated by MiniPerl6
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;
package KindaPerl6::Visitor::EmitLisp;
sub new { shift; bless { @_ }, "KindaPerl6::Visitor::EmitLisp" }
sub visit { my $self = shift; my $List__ = \@_; my $node; do {  $node = $List__->[0]; [$node] }; $node->emit_lisp($self->{visitor_args}->{'secure'}) }


;
package CompUnit;
sub new { shift; bless { @_ }, "CompUnit" }
sub set_secure_mode { my $List__ = \@_; my $args_secure; do {  $args_secure = $List__->[0]; [$args_secure] }; do { if (($args_secure != 0)) { return(('(pushnew :kp6-lisp-secure *features*)' . Main::newline())) } else { return('') } } };
sub emit_lisp { my $self = shift; my $List__ = \@_; my $args_secure; do {  $args_secure = $List__->[0]; [$args_secure] }; my  $interpreter = ('|' . ($self->{name} . '|')); (';; Do not edit this file - Lisp generated by ' . ($Main::_V6_COMPILER_NAME . (Main::newline() . ('(in-package #:cl-user)' . (Main::newline() . ('(eval-when (:compile-toplevel :load-toplevel :execute)' . (Main::newline() . ('  (when (null (find-package \'kp6-lisp))' . (Main::newline() . ('   ' . (set_secure_mode($args_secure) . (Main::newline() . ('   (load "lib/KindaPerl6/Runtime/Lisp/Runtime.lisp")))' . (Main::newline() . ('(defpackage #:' . ($self->{name} . (Main::newline() . ('  (:use #:cl #:kp6-lisp))' . (Main::newline() . ('(in-package #:kp6-lisp-user)' . (Main::newline() . ('(kp6-add-program' . (Main::newline() . (' (with-kp6-interpreter (' . ($interpreter . (')' . (Main::newline() . ('  (with-kp6-package (' . ($interpreter . (' "GLOBAL")' . (Main::newline() . ($self->{body}->emit_lisp($interpreter, 3) . (')))' . (Main::newline() . '(main)')))))))))))))))))))))))))))))))))) }


;
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Int :value ' . ($self->{int} . ')')) }


;
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Bit :value ' . ($self->{bit} . ')')) }


;
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Num :value ' . ($self->{num} . ')')) }


;
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Str :value ' . ('"' . (Main::mangle_string($self->{buf}) . ('"' . ')')))) }


;
package Val::Char;
sub new { shift; bless { @_ }, "Val::Char" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Char :value (code-char ' . ($self->{char} . '))')) }


;
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; '(make-instance \'kp6-Undef)' }


;
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-error ' . ($interpreter . ' \'kp6-not-implemented :feature "literal objects")')) }


;
package Native::Buf;
sub new { shift; bless { @_ }, "Native::Buf" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-error ' . ($interpreter . ' \'kp6-not-implemented :feature "Native::Buf objects")')) }


;
package Lit::Seq;
sub new { shift; bless { @_ }, "Lit::Seq" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(list ' . (Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{seq} } ], ' ') . ')')) }


;
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-Array :value (list ' . (Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{array} } ], ' ') . '))')) }


;
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $fields = $self->{hash}; my  $str = ''; my  $field; do { for my $field ( @{$fields} ) { $str = ($str . ('(kp6-store hash ' . ($field->[0]->emit_lisp($interpreter, $indent) . (' ' . ($field->[1]->emit_lisp($interpreter, $indent) . (')' . Main::newline())))))) } }; ('(let ((hash (make-instance \'kp6-Hash)))' . (Main::newline() . ($str . ' hash)'))) }


;
package Lit::Pair;
sub new { shift; bless { @_ }, "Lit::Pair" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-instance \'kp6-pair :key ' . ($self->{key}->emit_lisp($interpreter, $indent) . (' :value ' . ($self->{value}->emit_lisp($interpreter, $indent) . ')')))) }


;
package Lit::NamedArgument;
sub new { shift; bless { @_ }, "Lit::NamedArgument" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(make-kp6-argument \'named (make-instance \'kp6-pair :key ' . ($self->{key}->emit_lisp($interpreter, $indent) . (' :value ' . ($self->{value}->emit_lisp($interpreter, $indent) . '))')))) }


;
package Lit::Code;
sub new { shift; bless { @_ }, "Lit::Code" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(with-kp6-pad (' . ($interpreter . (')' . (Main::newline() . ($self->emit_declarations($interpreter, $indent) . (Main::newline() . ($self->emit_body($interpreter, $indent) . ')'))))))) };
sub emit_body { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{body} } ], Main::newline()) };
sub emit_signature { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; $self->{sig}->emit_lisp($interpreter, $indent) };
sub emit_declarations { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $s = ''; my  $name; do { for my $name ( @{$self->{pad}->variable_names()} ) { my  $decl = Decl->new( 'decl' => 'my','type' => '','var' => Var->new( 'sigil' => '','twigil' => '','name' => $name,'namespace' => [], ), );do { if (($s ne '')) { $s = ($s . Main::newline()) } else {  } };$s = ($s . $name->emit_lisp($interpreter, $indent)) } }; return($s) };
sub emit_arguments { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $array_ = Var->new( 'sigil' => '@','twigil' => '','name' => '_','namespace' => [], ); my  $hash_ = Var->new( 'sigil' => '%','twigil' => '','name' => '_','namespace' => [], ); my  $CAPTURE = Var->new( 'sigil' => '$','twigil' => '','name' => 'CAPTURE','namespace' => [], ); my  $CAPTURE_decl = Decl->new( 'decl' => 'my','type' => '','var' => $CAPTURE, ); my  $str = ''; $str = ($str . $CAPTURE_decl->emit_lisp($interpreter, $indent)); $str = ($str . '::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));'); my  $bind_ = Bind->new( 'parameters' => $array_,'arguments' => Call->new( 'invocant' => $CAPTURE,'method' => 'array','arguments' => [], ), ); $str = ($str . ($bind_->emit_lisp($interpreter, $indent) . ' ')); my  $bind_hash = Bind->new( 'parameters' => $hash_,'arguments' => Call->new( 'invocant' => $CAPTURE,'method' => 'hash','arguments' => [], ), ); $str = ($str . ($bind_hash->emit_lisp($interpreter, $indent) . ' ')); my  $i = 0; my  $field; do { for my $field ( @{$self->{sig}->positional()} ) { my  $bind = Bind->new( 'parameters' => $field,'arguments' => Index->new( 'obj' => $array_,'index' => Val::Int->new( 'int' => $i, ), ), );$str = ($str . ($bind->emit_lisp($interpreter, $indent) . ' '));$i = ($i + 1) } }; return($str) }


;
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $fields = $self->{fields}; my  $str = ''; my  $field; do { for my $field ( @{$fields} ) { $str = ($str . ($field->[0]->emit_lisp($interpreter, $indent) . (' => ' . ($field->[1]->emit_lisp($interpreter, $indent) . ',')))) } }; ('(kp6-new \'kp6-' . ($self->{class} . (' ' . ($str . ')')))) }


;
package Index;
sub new { shift; bless { @_ }, "Index" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-lookup ' . ($self->{obj}->emit_lisp($interpreter, $indent) . (' (perl->cl ' . ($self->{index}->emit_lisp($interpreter, $indent) . '))')))) }


;
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-lookup ' . ($self->{obj}->emit_lisp($interpreter, $indent) . (' (perl->cl ' . ($self->{index}->emit_lisp($interpreter, $indent) . '))')))) }


;
package Assign;
sub new { shift; bless { @_ }, "Assign" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $node = $self->{parameters}; do { if (Main::isa($node, 'Var')) { return($node->emit_lisp_assignment($self->{arguments}->emit_lisp($interpreter, $indent))) } else {  } }; do { if (((Main::isa($node, 'Lookup') || Main::isa($node, 'Index')) && Main::isa($node->obj(), 'Var'))) { return(('(kp6-store ' . ($node->obj()->emit_lisp() . (' (perl->cl ' . ($node->index()->emit_lisp() . (') ' . ($self->{arguments}->emit_lisp($interpreter, $indent) . ')'))))))) } else {  } }; ('(kp6-error ' . ($interpreter . ' \'kp6-not-implemented :feature "assigning to anything other than variables")')) }


;
package Var;
sub new { shift; bless { @_ }, "Var" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; return($self->emit_lisp_lookup(0)) };
sub emit_lisp_name { my $self = shift; my $List__ = \@_; do { [] }; ('(kp6-generate-variable "' . ($self->{sigil} . ('" "' . ($self->{name} . '")')))) };
sub emit_lisp_namespace { my $self = shift; my $List__ = \@_; do { [] }; ('"' . (Main::join($self->{namespace}, '::') . '"')) };
sub emit_lisp_lookup { my $self = shift; my $List__ = \@_; my $cell; do {  $cell = $List__->[0]; [$cell] }; my  $variant = ($cell ? '/c' : ''); do { if (@{$self->{namespace}}) { return(('(lookup-package-variable' . ($variant . (' ' . ($self->emit_lisp_name() . (' ' . ($self->emit_lisp_namespace() . ')'))))))) } else { return(('(lookup-lexical-variable' . ($variant . (' ' . ($self->emit_lisp_name() . ')'))))) } } };
sub emit_lisp_assignment { my $self = shift; my $List__ = \@_; my $value; my $cell; do {  $value = $List__->[0];  $cell = $List__->[1]; [$value, $cell] }; my  $variant = ($cell ? '/c' : ''); do { if (@{$self->{namespace}}) { return(('(set-package-variable' . ($variant . (' ' . ($self->emit_lisp_name() . (' ' . ($value . (' ' . ($self->emit_lisp_namespace() . ')'))))))))) } else { return(('(set-lexical-variable' . ($variant . (' ' . ($self->emit_lisp_name() . (' ' . ($value . ')'))))))) } } };
sub perl { my $self = shift; my $List__ = \@_; do { [] }; ('(kp6-new \'signature-item ' . ('sigil: \'' . ($self->{sigil} . ('\', ' . ('twigil: \'' . ($self->{twigil} . ('\', ' . ('name: \'' . ($self->{name} . ('\', ' . ('namespace: [ ], ' . ')'))))))))))) }


;
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; do { if (Main::isa($self->{arguments}, 'Var')) { return($self->{parameters}->emit_lisp_assignment($self->{arguments}->emit_lisp_lookup(1), 1)) } else {  } }; do { if (Main::isa($self->{arguments}, 'Sub')) { return($self->{parameters}->emit_lisp_assignment($self->{arguments}->emit_lisp($interpreter, $indent))) } else {  } }; return(('(kp6-error ' . ($interpreter . ' \'kp6-not-implemented :feature "binding anything other than variables")'))); do { if (Main::isa($self->{parameters}, 'Call')) { return(Assign->new( 'parameters' => $self->{parameters},'arguments' => $self->{arguments}, )->emit_lisp($interpreter, $indent)) } else {  } }; do { if (Main::isa($self->{parameters}, 'Lookup')) { return(Assign->new( 'parameters' => $self->{parameters},'arguments' => $self->{arguments}, )->emit_lisp($interpreter, $indent)) } else {  } }; do { if (Main::isa($self->{parameters}, 'Index')) { return(Assign->new( 'parameters' => $self->{parameters},'arguments' => $self->{arguments}, )->emit_lisp($interpreter, $indent)) } else {  } }; my  $str = ''; $str = ($str . ('(setf ' . ($self->{parameters}->emit_lisp($interpreter, $indent) . (' ' . ($self->{arguments}->emit_lisp($interpreter, $indent) . ')'))))); return($str) }


;
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; return(('\'' . $self->{name})) }


;
package Call;
sub new { shift; bless { @_ }, "Call" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; do { if ((Main::isa($self->{invocant}, 'Var') && (($self->{method} eq 'LOOKUP') || ($self->{method} eq 'INDEX')))) { return(('(kp6-lookup ' . ($self->{invocant}->emit_lisp($interpreter, $indent) . (' (perl->cl ' . ($self->{arguments}->[0]->emit_lisp($interpreter, $indent) . '))'))))) } else {  } } }


;
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $name = $self->{code}->name(); do { if (($name eq 'infix:<//>')) { my  $apply_func = ('(kp6-apply-function ' . ($interpreter . (' ' . ('(perl->cl (lookup-package-variable (kp6-generate-variable "&" "defined") "GLOBAL")) ' . '(list '))));return(('(or (kp6-true ' . ($apply_func . (Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{arguments} } ], '))) (kp6-true ') . '))')))) } else {  } }; do { if (($name eq 'infix:<&&>')) { return(('(and (kp6-true ' . (Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{arguments} } ], ') (kp6-true ') . '))'))) } else {  } }; do { if (($name eq 'infix:<||>')) { return(('(or (kp6-true ' . (Main::join([ map { $_->emit_lisp($interpreter, $indent) } @{ $self->{arguments} } ], ') (kp6-true ') . '))'))) } else {  } }; do { if (($name eq 'ternary:<?? !!>')) { return(('(if (kp6-true ' . ($self->{arguments}->[0]->emit_lisp($interpreter, $indent) . (') (progn ' . ($self->{arguments}->[1]->emit_lisp($interpreter, $indent) . (') (progn ' . ($self->{arguments}->[2]->emit_lisp($interpreter, $indent) . '))'))))))) } else {  } }; my  $op = $self->{code}->emit_lisp($interpreter, $indent); my  $str = ('(kp6-apply-function ' . ($interpreter . (' (perl->cl ' . ($op . ') (list')))); do { for my $arg ( @{$self->{arguments}} ) { $str = ($str . ' (make-instance \'kp6-positional-parameter :value ');do { if (Main::isa($arg, 'Var')) { $str = ($str . $arg->emit_lisp_lookup(1)) } else { $str = ($str . ('(make-kp6-cell ' . ($arg->emit_lisp($interpreter, $indent) . ')'))) } };$str = ($str . ')') } }; $str = ($str . '))'); return($str) }


;
package Return;
sub new { shift; bless { @_ }, "Return" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; return(('return(' . ($self->{result}->emit_lisp($interpreter, $indent) . ')'))) }


;
package If;
sub new { shift; bless { @_ }, "If" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $cond = ('(kp6-true ' . ($self->{cond}->emit_lisp($interpreter, $indent) . ')')); return(('(cond ' . (Main::newline() . ('(' . ($cond . (' ' . (($self->{body} ? $self->{body}->emit_lisp($interpreter, $indent) : 'nil') . (')' . (($self->{otherwise} ? (Main::newline() . ('(t ' . ($self->{otherwise}->emit_lisp($interpreter, $indent) . ')'))) : '') . ')'))))))))) }


;
package For;
sub new { shift; bless { @_ }, "For" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $cond = $self->{cond}; do { if ((Main::isa($cond, 'Var') && ($cond->sigil() eq '@'))) {  } else { $cond = Apply->new( 'code' => Var->new( 'sigil' => '&','twigil' => '','name' => 'prefix:<@>','namespace' => ['GLOBAL'], ),'arguments' => [$cond], ) } }; ('(kp6-for-->-single' . ('  ' . ($self->{topic}->emit_lisp_name() . ('  ' . ($cond->emit_lisp($interpreter, $indent) . ('  ' . ($self->{body}->emit_lisp($interpreter, $indent) . ')'))))))) }


;
package While;
sub new { shift; bless { @_ }, "While" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $cond = $self->{cond}; do { if ((Main::isa($cond, 'Var') && ($cond->sigil() eq '@'))) {  } else { $cond = Apply->new( 'code' => Var->new( 'sigil' => '&','twigil' => '','name' => 'prefix:<@>','namespace' => ['GLOBAL'], ),'arguments' => [$cond], ) } }; ('(loop :while (kp6-true ' . ($self->{cond}->emit_lisp($interpreter, $indent) . (')' . (Main::newline() . (' :do ' . ($self->{body}->emit_lisp($interpreter, $indent) . (')' . Main::newline()))))))) }


;
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $decl = $self->{decl}; my  $name = $self->{var}->name(); do { if (($decl eq 'our')) { return(('(define-package-variable ' . ($self->{var}->emit_lisp_name() . (' (enclosing-package))' . (Main::newline() . ('(define-lexical-variable ' . ($self->{var}->emit_lisp_name() . (')' . (Main::newline() . ('(set-lexical-variable/c ' . ($self->{var}->emit_lisp_name() . (' (lookup-package-variable/c ' . ($self->{var}->emit_lisp_name() . ' (enclosing-package)))'))))))))))))) } else {  } }; do { if (($decl eq 'my')) { return(('(define-lexical-variable ' . ($self->{var}->emit_lisp_name() . ')'))) } else {  } }; return(('(kp6-error ' . ($interpreter . (' \'kp6-not-implemented :feature "\\"' . ($decl . '\\" variables")'))))); do { if (($decl eq 'has')) { return(('sub ' . ($name . (' { ' . ('@_ == 1 ' . ('? ( $_[0]->{' . ($name . ('} ) ' . (': ( $_[0]->{' . ($name . ('} = $_[1] ) ' . '}'))))))))))) } else {  } }; my  $create = (', \'new\', { modified => $_MODIFIED, name => \'' . ($self->{var}->emit_lisp($interpreter, $indent) . '\' } ) ')); do { if (($decl eq 'our')) { my  $s;$s = 'our ';do { if (($self->{var}->sigil() eq '$')) { return(($s . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Scalar' . ($create . (' unless defined ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . ('BEGIN { ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Scalar' . ($create . (' unless defined ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . '}'))))))))))))))) } else {  } };do { if (($self->{var}->sigil() eq '&')) { return(($s . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Routine' . ($create . ';'))))) } else {  } };do { if (($self->{var}->sigil() eq '%')) { return(($s . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Hash' . ($create . ';'))))) } else {  } };do { if (($self->{var}->sigil() eq '@')) { return(($s . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Array' . ($create . ';'))))) } else {  } };return(($s . $self->{var}->emit_lisp($interpreter, $indent))) } else {  } }; do { if (($self->{var}->sigil() eq '$')) { return(($self->{decl} . (' ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Scalar' . ($create . (' unless defined ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . ('BEGIN { ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Scalar' . ($create . '}'))))))))))))))) } else {  } }; do { if (($self->{var}->sigil() eq '&')) { return(($self->{decl} . (' ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Routine' . ($create . (' unless defined ' . ($self->{var}->emit_lisp($interpreter, $indent) . ('; ' . ('BEGIN { ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Routine' . ($create . '}'))))))))))))))) } else {  } }; do { if (($self->{var}->sigil() eq '%')) { return(($self->{decl} . (' ' . (' ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Hash' . ($create . '; '))))))) } else {  } }; do { if (($self->{var}->sigil() eq '@')) { return(($self->{decl} . (' ' . (' ' . ($self->{var}->emit_lisp($interpreter, $indent) . (' = ::DISPATCH( $::Array' . ($create . '; '))))))) } else {  } }; return(($self->{decl} . (' ' . $self->{var}->emit_lisp($interpreter, $indent)))) }


;
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $str = '(make-instance \'kp6-signature'; do { if ($self->{invocant}) { $str = ($str . (' :invocant ' . $self->{invocant}->emit_lisp($interpreter, $indent))) } else {  } }; $str = ($str . ' :positional (list'); do { for my $decl ( @{$self->{positional}} ) { $str = ($str . (' (make-instance \'kp6-named-parameter :name ' . ($decl->emit_lisp_name($interpreter, $indent) . ')'))) } }; $str = ($str . ')'); $str = ($str . ')'); return($str) }


;
package Capture;
sub new { shift; bless { @_ }, "Capture" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; my  $s = '(kp6-new \'capture '; do { if (defined($self->{invocant})) { $s = ($s . ('invocant: ' . ($self->{invocant}->emit_lisp($interpreter, $indent) . ', '))) } else { $s = ($s . 'invocant: $::Undef, ') } }; do { if (defined($self->{array})) { $s = ($s . 'array: ::DISPATCH( $::Array, "new", { _array => [ ');my  $item;do { for my $item ( @{$self->{array}} ) { $s = ($s . ($item->emit_lisp($interpreter, $indent) . ', ')) } };$s = ($s . ' ] } ),') } else {  } }; do { if (defined($self->{hash})) { $s = ($s . 'hash: ::DISPATCH( $::Hash, "new", { _hash => { ');my  $item;do { for my $item ( @{$self->{hash}} ) { $s = ($s . ($item->[0]->emit_lisp($interpreter, $indent) . ('->{_value} => ' . ($item->[1]->emit_lisp($interpreter) . ', ')))) } };$s = ($s . ' } } ),') } else {  } }; return(($s . ')')) }


;
package Subset;
sub new { shift; bless { @_ }, "Subset" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-new \'subset ' . ('base_class: ' . ($self->{base_class}->emit_lisp($interpreter, $indent) . (', ' . ('block: ' . ('sub { local $_ = shift; ' . ($self->{block}->block()->emit_lisp($interpreter, $indent) . (' } ' . ')')))))))) }


;
package Method;
sub new { shift; bless { @_ }, "Method" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('(kp6-new \'code ' . ('code: sub { ' . ($self->{block}->emit_declarations($interpreter, $indent) . ('$self = shift; ' . ($self->{block}->emit_arguments($interpreter, $indent) . ($self->{block}->emit_body($interpreter, $indent) . (' ' . ('signature: ' . ($self->{block}->emit_signature($interpreter, $indent) . ')'))))))))) }


;
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; return(('(make-kp6-sub (' . ($self->{block}->emit_signature($interpreter, $indent) . (')' . (Main::newline() . ($self->{block}->emit_body($interpreter, $indent) . ')')))))) }


;
package Do;
sub new { shift; bless { @_ }, "Do" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; $self->{block}->emit_lisp($interpreter, $indent) }


;
package BEGIN;
sub new { shift; bless { @_ }, "BEGIN" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; ('BEGIN { ' . ($self->{block}->emit_lisp($interpreter, $indent) . ' }')) }


;
package Use;
sub new { shift; bless { @_ }, "Use" }
sub emit_lisp { my $self = shift; my $List__ = \@_; my $interpreter; my $indent; do {  $interpreter = $List__->[0];  $indent = $List__->[1]; [$interpreter, $indent] }; do { if (($self->{mod} eq 'v6')) { return((Main::newline() . ('#use v6' . Main::newline()))) } else {  } }; do { if ($self->{perl5}) { return(('use ' . ($self->{mod} . (';$::' . ($self->{mod} . ('= KindaPerl6::Runtime::Perl5::Wrap::use5(\'' . ($self->{mod} . '\')'))))))) } else { return(('use ' . $self->{mod})) } } }


;
1;

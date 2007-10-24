{

    package Signature::Item;

    # Do not edit this file - Perl 5 generated by KindaPerl6
    use v5;
    use strict;
    no strict "vars";
    use constant KP6_DISABLE_INSECURE_CODE => 0;
    use KindaPerl6::Runtime::Perl5::Runtime;
    my $_MODIFIED;
    BEGIN { $_MODIFIED = {} }

    BEGIN {
        $_ = ::DISPATCH( $::Scalar, "new", { modified => $_MODIFIED, name => "$_" } );
    }
    do {
        do {
            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::Signature::Item ), "true" ), "p5landish" ) ) {
            }
            else {
                do {
                    do {
                        ::MODIFIED($::Signature::Item);
                        $::Signature::Item = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'Signature::Item' ) ), 'PROTOTYPE', );
                        }
                    }
            }
        };
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'sigil' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'twigil' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'name' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'value' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_named_only' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_optional' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_slurpy' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_multidimensional' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_rw' ) );
        ::DISPATCH( ::DISPATCH( $::Signature::Item, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str, 'new', 'is_copy' ) );
        ::DISPATCH(
            ::DISPATCH( $::Signature::Item, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'perl' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {
                        my $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } )
                            unless defined $self;

                        BEGIN {
                            $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } );
                        }
                        $self = shift;
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )
                            unless defined $CAPTURE;

                        BEGIN {
                            $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } );
                        }
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        do {
                            ::MODIFIED($List__);
                            $List__ = ::DISPATCH( $CAPTURE, 'array', );
                        };
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }
                        ::DISPATCH(
                            $GLOBAL::Code_infix_58__60__126__62_,
                            'APPLY',
                            ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_named_only" ), ::DISPATCH( $::Str, 'new', ':' ), ::DISPATCH( $::Str, 'new', '' ) ),
                            ::DISPATCH(
                                $GLOBAL::Code_infix_58__60__126__62_,
                                'APPLY',
                                ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_slurpy" ), ::DISPATCH( $::Str, 'new', '*' ), ::DISPATCH( $::Str, 'new', '' ) ),
                                ::DISPATCH(
                                    $GLOBAL::Code_infix_58__60__126__62_,
                                    'APPLY',
                                    ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_multidimensional" ), ::DISPATCH( $::Str, 'new', '@' ), ::DISPATCH( $::Str, 'new', '' ) ),
                                    ::DISPATCH(
                                        $GLOBAL::Code_infix_58__60__126__62_,
                                        'APPLY',
                                        ::DISPATCH( $self, "sigil" ),
                                        ::DISPATCH(
                                            $GLOBAL::Code_infix_58__60__126__62_,
                                            'APPLY',
                                            ::DISPATCH( $self, "twigil" ),
                                            ::DISPATCH(
                                                $GLOBAL::Code_infix_58__60__126__62_,
                                                'APPLY',
                                                ::DISPATCH( $self, "name" ),
                                                ::DISPATCH(
                                                    $GLOBAL::Code_infix_58__60__126__62_,
                                                    'APPLY',
                                                    ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_optional" ), ::DISPATCH( $::Str, 'new', '?' ), ::DISPATCH( $::Str, 'new', '!' ) ),
                                                    ::DISPATCH(
                                                        $GLOBAL::Code_infix_58__60__126__62_,
                                                        'APPLY',
                                                        ::DISPATCH(
                                                            $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_,
                                                            'APPLY',
                                                            ::DISPATCH( $GLOBAL::Code_defined, 'APPLY', ::DISPATCH( $self, "value" ) ),
                                                            ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $::Str, 'new', ' = ' ), ::DISPATCH( ::DISPATCH( $self, "value" ), 'perl', ) ),
                                                            ::DISPATCH( $::Str,                               'new',   '' )
                                                        ),
                                                        ::DISPATCH(
                                                            $GLOBAL::Code_infix_58__60__126__62_,
                                                            'APPLY',
                                                            ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_rw" ),   ::DISPATCH( $::Str, 'new', ' is rw' ),   ::DISPATCH( $::Str, 'new', '' ) ),
                                                            ::DISPATCH( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_, 'APPLY', ::DISPATCH( $self, "is_copy" ), ::DISPATCH( $::Str, 'new', ' is copy' ), ::DISPATCH( $::Str, 'new', '' ) )
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::Array, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
    };
    1
}
{

    package Signature;

    # Do not edit this file - Perl 5 generated by KindaPerl6
    use v5;
    use strict;
    no strict "vars";
    use constant KP6_DISABLE_INSECURE_CODE => 0;
    use KindaPerl6::Runtime::Perl5::Runtime;
    my $_MODIFIED;
    BEGIN { $_MODIFIED = {} }

    BEGIN {
        $_ = ::DISPATCH( $::Scalar, "new", { modified => $_MODIFIED, name => "$_" } );
    }
    do {
        do {
            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::Signature ), "true" ), "p5landish" ) ) {
            }
            else {
                do {
                    do {
                        ::MODIFIED($::Signature);
                        $::Signature = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'Signature' ) ), 'PROTOTYPE', );
                        }
                    }
            }
        };
        ::DISPATCH( ::DISPATCH( $::Signature, 'HOW', ), 'add_parent',    ::DISPATCH( $::Value, 'HOW', ) );
        ::DISPATCH( ::DISPATCH( $::Signature, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'invocant' ) );
        ::DISPATCH( ::DISPATCH( $::Signature, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'array' ) );
        ::DISPATCH( ::DISPATCH( $::Signature, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'return' ) );
        ::DISPATCH(
            ::DISPATCH( $::Signature, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'arity' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {
                        my $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } )
                            unless defined $self;

                        BEGIN {
                            $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } );
                        }
                        $self = shift;
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )
                            unless defined $CAPTURE;

                        BEGIN {
                            $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } );
                        }
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        do {
                            ::MODIFIED($List__);
                            $List__ = ::DISPATCH( $CAPTURE, 'array', );
                        };
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }
                        do {
                            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( $GLOBAL::Code_prefix_58__60__33__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_defined, 'APPLY', ::DISPATCH( $self, 'array', ) ) ), "true" ), "p5landish" ) ) {
                                do {
                                    ::DISPATCH_VAR( ::DISPATCH( $self, 'array', ), 'STORE', ::DISPATCH( $::Array, 'new', { _array => [] } ) );
                                    }
                            }
                            else { ::DISPATCH( $::Bit, "new", 0 ) }
                        };
                        ::DISPATCH( ::DISPATCH( $self, "array" ), 'elems', );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::Array, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Signature, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'perl' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {
                        my $v;
                        $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } )
                            unless defined $v;

                        BEGIN {
                            $v = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$v' } );
                        }
                        my $s;
                        $s = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$s' } )
                            unless defined $s;

                        BEGIN {
                            $s = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$s' } );
                        }
                        my $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } )
                            unless defined $self;

                        BEGIN {
                            $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } );
                        }
                        $self = shift;
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )
                            unless defined $CAPTURE;

                        BEGIN {
                            $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } );
                        }
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        do {
                            ::MODIFIED($List__);
                            $List__ = ::DISPATCH( $CAPTURE, 'array', );
                        };
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }
                        $v;
                        ::DISPATCH_VAR( $s, 'STORE', ::DISPATCH( $::Str, 'new', ':( ' ) );
                        do {
                            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( ::DISPATCH( $self, "invocant" ), 'defined', ), "true" ), "p5landish" ) ) {
                                do {
                                    ::DISPATCH_VAR(
                                        $s, 'STORE',
                                        ::DISPATCH(
                                            $GLOBAL::Code_infix_58__60__126__62_,
                                            'APPLY', $s, ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( ::DISPATCH( $self, "invocant" ), 'perl', ), ::DISPATCH( $::Str, 'new', ': ' ) )
                                        )
                                    );
                                    }
                            }
                            else { ::DISPATCH( $::Bit, "new", 0 ) }
                        };
                        ::DISPATCH(
                            ::DISPATCH( $self, "array" ),
                            'for',
                            ::DISPATCH(
                                $::Code, 'new',
                                {   code => sub {
                                        my $List__ = ::DISPATCH(
                                            $::Array, 'new',
                                            {   modified => $_MODIFIED,
                                                name     => '$List__'
                                            }
                                        );
                                        my $v;
                                        $v = ::DISPATCH(
                                            $::Scalar,
                                            'new',
                                            {   modified => $_MODIFIED,
                                                name     => '$v'
                                            }
                                        ) unless defined $v;

                                        BEGIN {
                                            $v = ::DISPATCH(
                                                $::Scalar,
                                                'new',
                                                {   modified => $_MODIFIED,
                                                    name     => '$v'
                                                }
                                            );
                                        }
                                        my $CAPTURE;
                                        $CAPTURE = ::DISPATCH(
                                            $::Scalar,
                                            'new',
                                            {   modified => $_MODIFIED,
                                                name     => '$CAPTURE'
                                            }
                                        ) unless defined $CAPTURE;

                                        BEGIN {
                                            $CAPTURE = ::DISPATCH(
                                                $::Scalar,
                                                'new',
                                                {   modified => $_MODIFIED,
                                                    name     => '$CAPTURE'
                                                }
                                            );
                                        }
                                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                                        do {
                                            ::MODIFIED($List__);
                                            $List__ = ::DISPATCH( $CAPTURE, 'array', );
                                        };
                                        do {
                                            ::MODIFIED($Hash__);
                                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                                        };
                                        {
                                            my $_param_index = 0;
                                            if ( exists $Hash__->{_value}{_hash}{'v'} ) {
                                                do {
                                                    ::MODIFIED($v);
                                                    $v = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'v' ) );
                                                    }
                                            }
                                            elsif ( exists $List__->{_value}{_array}[$_param_index] ) {
                                                $v = $List__->{_value}{_array}[ $_param_index++ ];
                                            }
                                        }
                                        ::DISPATCH_VAR( $s, 'STORE',
                                            ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', $s, ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $v, 'perl', ), ::DISPATCH( $::Str, 'new', ', ' ) ) ) );
                                    },
                                    signature => ::DISPATCH(
                                        $::Signature,
                                        "new",
                                        {   invocant => $::Undef,
                                            array    => ::DISPATCH(
                                                $::Array, "new",
                                                {   _array => [
                                                        ::DISPATCH(
                                                            $::Signature::Item,
                                                            'new',
                                                            {   sigil               => '$',
                                                                twigil              => '',
                                                                name                => 'v',
                                                                value               => $::Undef,
                                                                has_default         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_named_only       => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_optional         => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_slurpy           => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_multidimensional => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_rw               => ::DISPATCH( $::Bit, 'new', 0 ),
                                                                is_copy             => ::DISPATCH( $::Bit, 'new', 0 ),
                                                            }
                                                        ),
                                                    ]
                                                }
                                            ),
                                            return => $::Undef,
                                        }
                                    ),
                                }
                            )
                        );
                        return ( ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', $s, ::DISPATCH( $::Str, 'new', ' )' ) ) );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::Array, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Signature, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'Str' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {
                        my $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } )
                            unless defined $self;

                        BEGIN {
                            $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } );
                        }
                        $self = shift;
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )
                            unless defined $CAPTURE;

                        BEGIN {
                            $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } );
                        }
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        do {
                            ::MODIFIED($List__);
                            $List__ = ::DISPATCH( $CAPTURE, 'array', );
                        };
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }
                        ::DISPATCH( $self, 'perl', );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::Array, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
    };
    1
}

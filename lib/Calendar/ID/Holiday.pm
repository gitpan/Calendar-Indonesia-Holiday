package Calendar::ID::Holiday;
BEGIN {
  $Calendar::ID::Holiday::VERSION = '0.04';
}
use Calendar::Indonesia::Holiday;
our @ISA       = @Calendar::Indonesia::Holiday::ISA;
our @EXPORT    = @Calendar::Indonesia::Holiday::EXPORT;
our @EXPORT_OK = @Calendar::Indonesia::Holiday::EXPORT_OK;
our %SPEC      = %Calendar::Indonesia::Holiday::SPEC;
for my $f (keys %SPEC) {
    *{$f} = \&{"Calendar::Indonesia::Holiday::$f"};
}

1;
# ABSTRACT: Alias for Calendar::Indonesia::Holiday

__END__
=pod

=head1 NAME

Calendar::ID::Holiday - Alias for Calendar::Indonesia::Holiday

=head1 VERSION

version 0.04

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


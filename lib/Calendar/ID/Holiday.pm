package Calendar::ID::Holiday;
use Calendar::Indonesia::Holiday;
our $VERSION = '0.13'; # VERSION
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

=encoding utf-8

=head1 NAME

Calendar::ID::Holiday - Alias for Calendar::Indonesia::Holiday

=head1 VERSION

version 0.13

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DESCRIPTION

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=head2 count_id_workdays() -> [status, msg, result, meta]

No arguments.

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head2 enum_id_workdays() -> [status, msg, result, meta]

No arguments.

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head2 list_id_holidays() -> [status, msg, result, meta]

No arguments.

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=cut

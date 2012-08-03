package Calendar::ID::Holiday;
use Calendar::Indonesia::Holiday;
our $VERSION = '0.11'; # VERSION
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

version 0.11

=head1 DESCRIPTION


This module has L<Rinci> metadata.

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=head2 count_id_workdays(%args) -> [status, msg, result, meta]

Count working days for a certain period.

Working day is defined as day that is not SaturdayI</Sunday/holiday/joint leave
days>. If workI<saturdays is set to true, Saturdays are also counted as working
days. If observe>joint_leaves is set to false, joint leave days are also counted
as working days.

Contains data from years 2002 to 2013 (joint leave days until
2013).

Arguments ('*' denotes required arguments):

=over 4

=item * B<end_date> => I<str>

End date.

Defaults to end of current month. Either a string in the form of "YYYY-MM-DD",
or a DateTime object, is accepted.

=item * B<observe_joint_leaves> => I<bool> (default: 1)

If set to 0, do not observe joint leave as holidays.

=item * B<start_date> => I<str>

Starting date.

Defaults to start of current month. Either a string in the form of "YYYY-MM-DD",
or a DateTime object, is accepted.

=item * B<work_saturdays> => I<bool> (default: 0)

If set to 1, Saturday is a working day.

=back

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head2 enum_id_workdays(%args) -> [status, msg, result, meta]

Enumerate working days for a certain period.

Working day is defined as day that is not SaturdayI</Sunday/holiday/joint leave
days>. If workI<saturdays is set to true, Saturdays are also counted as working
days. If observe>joint_leaves is set to false, joint leave days are also counted
as working days.

Contains data from years 2002 to 2013 (joint leave days until
2013).

Arguments ('*' denotes required arguments):

=over 4

=item * B<end_date> => I<str>

End date.

Defaults to end of current month. Either a string in the form of "YYYY-MM-DD",
or a DateTime object, is accepted.

=item * B<observe_joint_leaves> => I<bool> (default: 1)

If set to 0, do not observe joint leave as holidays.

=item * B<start_date> => I<str>

Starting date.

Defaults to start of current month. Either a string in the form of "YYYY-MM-DD",
or a DateTime object, is accepted.

=item * B<work_saturdays> => I<bool> (default: 0)

If set to 1, Saturday is a working day.

=back

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head2 list_id_holidays(%args) -> [status, msg, result, meta]

List Indonesian holidays in calendar.

List holidays and joint leave days ("cuti bersama").

Contains data from years 2002 to 2013 (joint leave days until
2013).

Arguments ('*' denotes required arguments):

=over 4

=item * B<date> => I<str>

Only return records where the 'date' field equals specified value.

=item * B<date.contains> => I<str>

Only return records where the 'date' field contains specified text.

=item * B<date.is> => I<str>

Only return records where the 'date' field equals specified value.

=item * B<date.max> => I<str>

Only return records where the 'date' field is less than or equal to specified value.

=item * B<date.min> => I<array>

Only return records where the 'date' field is greater than or equal to specified value.

=item * B<date.not_contains> => I<str>

Only return records where the 'date' field does not contain a certain text.

=item * B<date.xmax> => I<str>

Only return records where the 'date' field is less than specified value.

=item * B<date.xmin> => I<array>

Only return records where the 'date' field is greater than specified value.

=item * B<day> => I<int>

Only return records where the 'day' field equals specified value.

=item * B<day.is> => I<int>

Only return records where the 'day' field equals specified value.

=item * B<day.max> => I<int>

Only return records where the 'day' field is less than or equal to specified value.

=item * B<day.min> => I<array>

Only return records where the 'day' field is greater than or equal to specified value.

=item * B<day.xmax> => I<int>

Only return records where the 'day' field is less than specified value.

=item * B<day.xmin> => I<array>

Only return records where the 'day' field is greater than specified value.

=item * B<detail> => I<bool> (default: 0)

Return array of full records instead of just ID fields.

By default, only the key (ID) field is returned per result entry.

=item * B<dow> => I<int>

Only return records where the 'dow' field equals specified value.

=item * B<dow.is> => I<int>

Only return records where the 'dow' field equals specified value.

=item * B<dow.max> => I<int>

Only return records where the 'dow' field is less than or equal to specified value.

=item * B<dow.min> => I<array>

Only return records where the 'dow' field is greater than or equal to specified value.

=item * B<dow.xmax> => I<int>

Only return records where the 'dow' field is less than specified value.

=item * B<dow.xmin> => I<array>

Only return records where the 'dow' field is greater than specified value.

=item * B<fields> => I<array>

Select fields to return.

=item * B<is_holiday> => I<bool>

Only return records where the 'is_holiday' field equals specified value.

=item * B<is_holiday.is> => I<bool>

Only return records where the 'is_holiday' field equals specified value.

=item * B<is_joint_leave> => I<bool>

Only return records where the 'is_joint_leave' field equals specified value.

=item * B<is_joint_leave.is> => I<bool>

Only return records where the 'is_joint_leave' field equals specified value.

=item * B<month> => I<int>

Only return records where the 'month' field equals specified value.

=item * B<month.is> => I<int>

Only return records where the 'month' field equals specified value.

=item * B<month.max> => I<int>

Only return records where the 'month' field is less than or equal to specified value.

=item * B<month.min> => I<array>

Only return records where the 'month' field is greater than or equal to specified value.

=item * B<month.xmax> => I<int>

Only return records where the 'month' field is less than specified value.

=item * B<month.xmin> => I<array>

Only return records where the 'month' field is greater than specified value.

=item * B<q> => I<str>

Search.

=item * B<random> => I<bool> (default: 0)

Return records in random order.

=item * B<result_limit> => I<int>

Only return a certain number of records.

=item * B<result_start> => I<int> (default: 1)

Only return starting from the n'th record.

=item * B<sort> => I<str>

Order records according to certain field(s).

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=item * B<tags> => I<array>

Only return records where the 'tags' field equals specified value.

=item * B<tags.has> => I<array>

Only return records where the 'tags' field is an array/list which contains specified value.

=item * B<tags.is> => I<array>

Only return records where the 'tags' field equals specified value.

=item * B<tags.lacks> => I<array>

Only return records where the 'tags' field is an array/list which does not contain specified value.

=item * B<with_field_names> => I<bool>

Return field names in each record (as hash/associative array).

When enabled, function will return each record as hash/associative array
(field name => value pairs). Otherwise, function will return each record
as list/array (field value, field value, ...).

=item * B<year> => I<int>

Only return records where the 'year' field equals specified value.

=item * B<year.is> => I<int>

Only return records where the 'year' field equals specified value.

=item * B<year.max> => I<int>

Only return records where the 'year' field is less than or equal to specified value.

=item * B<year.min> => I<array>

Only return records where the 'year' field is greater than or equal to specified value.

=item * B<year.xmax> => I<int>

Only return records where the 'year' field is less than specified value.

=item * B<year.xmin> => I<array>

Only return records where the 'year' field is greater than specified value.

=back

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


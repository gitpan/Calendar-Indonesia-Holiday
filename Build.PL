
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "List Indonesian public holidays",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Calendar-Indonesia-Holiday",
  "dist_version" => "0.14",
  "license" => "perl",
  "module_name" => "Calendar::Indonesia::Holiday",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Clone" => 0,
    "DateTime" => 0,
    "Log::Any" => 0,
    "Perinci::CmdLine" => 0,
    "Perinci::Sub::Gen::AccessTable" => "0.16",
    "Perinci::Sub::Util" => "0.32",
    "Rinci" => "0.13",
    "experimental" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/list-id-holidays"
  ],
  "test_requires" => {
    "Test::More" => "0.96"
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

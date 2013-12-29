#
# Makefile.PL for Template::Plugin::HTTP::UserAgent
#
use ExtUtils::MakeMaker;

my $mm_ver = $ExtUtils::MakeMaker::VERSION;
if ($mm_ver =~ /_/) { # dev version
    $mm_ver = eval $mm_ver;
    die $@ if $@;
}

WriteMakefile(
    NAME         => 'Template::Plugin::HTTP::UserAgent',
    DISTNAME     => 'Template-Plugin-HTTP-UserAgent',
    ABSTRACT     => 'Template plugin for parsing HTTP User-Agent string',
    AUTHOR       => 'Neil Bowers <neil@bowers.com>',
    VERSION_FROM => 'lib/Template/Plugin/HTTP/UserAgent.pm',

    ($mm_ver <= 6.31
        ? ()
        : (LICENSE => 'perl')
    ),

    ($mm_ver <= 6.45 ? () : (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            bugtracker  => 'http://rt.cpan.org/Public/Dist/Display.html?Name=Template-Plugin-HTTP-UserAgent',
            repository  => {
                type => 'git',
                web  => 'https://github.com/neilbowers/Template-Plugin-HTTP-UserAgent',
                url  => 'git://github.com/neilbowers/Template-Plugin-HTTP-UserAgent.git',
            },
        },
    })),

    PREREQ_PM    => {
        'Template::Plugin'   => 0,
        'Template::Test'     => 0,
        'HTML::ParseBrowser' => 1.05,
        'parent'             => 0,
    },

    ($mm_ver >= 6.48
        ? (MIN_PERL_VERSION => 5.010)
        : ()
    ),

);


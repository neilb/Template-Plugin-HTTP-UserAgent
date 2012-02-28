#
# Makefile.PL for Template::Plugin::HTTP::UserAgent
#
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Template-Plugin-HTTP-UserAgent',
    DISTNAME     => 'Template-Plugin-HTTP-UserAgent',
    ABSTRACT     => 'Template plugin for parsing HTTP User-Agent string',
    AUTHOR       => 'Neil Bowers <neil@bowers.com>',
    VERSION_FROM => 'lib/Template/Plugin/HTTP/UserAgent.pm',
    META_MERGE   => {
        resources => {
            repository => 'https://github.com/neilbowers/Template-Plugin-HTTP-UserAgent',
        },
    },
    PREREQ_PM    => {
        'Template::Plugin'   => 0,
        'Template::Test'     => 0,
        'HTML::ParseBrowser' => 1.05,
        'parent'             => 0,
    },
);


##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "libwww-perl-daemon"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "Perl CPAN HTTP::Daemon - a simple http server class. Instances of the HTTP::Daemon class are HTTP/1.1 servers that listen on a socket for incoming requests."
website "http://search.cpan.org/~gaas/HTTP-Daemon-6.00/lib/HTTP/Daemon.pm"

# ShodanHQ results as at 2011-08-20 #
# 154 for libwww-perl-daemon



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^libwww-perl-daemon\/([^\s]+)/ },

]

end


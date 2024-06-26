##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MongoDB"
authors [
  "Steve 'Ashcrow' Milner",
]
version "0.1"
description "Identifies the admnistration console of MondoDB. http://www.mongodb.org/"



##
# Would be a good idea to find common items in stacktraces which identify
# the use of mongodb to expand this beyond just administration console.
##


matches [

{:name=>"Title",
 :certainty=>75,
 :regexp=>/<title>mongod [^<]+<\/title>/},

{:name=>"Commands",
 :certainty=>75,
 :text=>'<a href="/buildInfo?text=1" title="get version #, etc.
{ buildinfo:1 }">buildInfo</a> <a href="/cursorInfo?text=1" title=" example: { cursorInfo : 1 }">cursorInfo</a>'},

{:name=>"Info",
 :certainty=>100,
 :regexp=>/<pre>db version v[\d\.]+, pdfile version [\d\.]+\ngit hash:/,
 :version=>/<pre>db version v([\d\.]+){1}/},
]

end

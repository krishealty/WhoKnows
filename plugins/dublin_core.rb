##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DublinCore"
authors [
  "Caleb Anderson",
]
version "0.1"
description "Dublin Core Metadata Initiative (DCMI) supports shared innovation in metadata design and best practices across a broad range of purposes and business models."
website "http://dublincore.org"


matches [
{:name=>"dublin core", :regexp=>/<meta [^>]*name="DC\.title"[^>]*>/i},
]
end



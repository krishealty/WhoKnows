##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Kinja"
authors [
  "Sigit Dewanto",
]
version "0.1"
description "Kinja is Gawker Media's discussion platform."

matches [
{ :name=>"X-Kinja Header", :regexp=>/^$/, :search=>"headers[x-kinja]" }
]


end

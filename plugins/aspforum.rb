##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ASPForum"
authors [
  "Mateusz Golewski",
]
version "0.1"
description "Kind of ASP forum."

matches [

{:version=>/<div[^>]+id="FORUMS_FORUM_GROUP_V([\d_]+)/,  :name=>"version" },

]

end

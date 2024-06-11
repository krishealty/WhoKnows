##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Lithium"
authors [
  "Mateusz Golewski",
]
version "0.1"
description "A Lithium forum engine."

matches [

{:name=>"BODY id element",
:regexp=>/<body[^>]+id="lia-body"/},

]

end

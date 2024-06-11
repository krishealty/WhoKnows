##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BlogSmithMedia"
authors [
  "Andrew Horton",
  # v0.2 # removed :name
]
version "0.2"
description "Pro bloggers - www.blogsmithmedia.com"

# identifying strings
# uses scripts,css,icons hosted at blogsmithmedia.com
# "<script .*\"http://www.blogsmithmedia.com" *

matches [
{:certainty=>75, :regexp=>/<script [^>]*\"http:\/\/www.blogsmithmedia.com/},
]


end





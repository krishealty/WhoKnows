##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IP"
authors [
  "Andrew Horton",
  # v0.2 # added - unless @ip.empty?
]
version "0.2"
description "IP address of the target, if available."

passive do
m=[]

m << {:string=>@ip } unless @ip.nil? or @ip.empty?
m
end

end


##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Citrix-Metaframe"
authors [
  "Andrew Horton",
  # v0.2 # removed :name and :certainty=>100
]
version "0.2"
description "Citrix-Metaframe. Thin clients."


=begin
<!--
---- WebInterface.htm
---- Copyright (c) 2000 - 2005 Citrix Systems, Inc. All Rights Reserved.
---- Web Interface (Build 45083)
-->
<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
<!--
window.location="/Citrix/MetaFrame";
// -->
=end

#


matches [
{:regexp=>/Copyright \(c\) [\d]+ - [\d]+ Citrix Systems, Inc. All Rights Reserved./ },
{:text=>'window.location="/Citrix/MetaFrame";' },
{:text=>"<title>MetaFrame Presentation Server Log In</title>" },
]



end





maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures sudo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w[ hpux aix].each do |os|
  supports os
end

attribute "authorization",
  :display_name => "Authorization",
  :description => "Hash of Authorization attributes",
  :type => "hash"

attribute "authorization/sudo",
  :display_name => "Authorization Sudoers",
  :description => "Hash of Authorization/Sudo attributes",
  :type => "hash"

attribute "authorization/sudo/users",
  :display_name => "Sudo Users",
  :description => "Users who are allowed sudo ALL",
  :type => "array",
  :default => ""

attribute "authorization/sudo/groups",
  :display_name => "Sudo Groups",
  :description => "Groups who are allowed sudo ALL",
  :type => "array",
  :default => ""

attribute "authorization/sudo/passwordless",
  :display_name => "Passwordless Sudo",
  :description => "",
  :type => "string",
  :default => "false"

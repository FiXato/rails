#!/usr/bin/env ruby
puts `sudo gem uninstall {rails,action{mailer,pack},active{record,resource,support}} -a -I -x`
puts "\n"*5
puts `sleep 2`
%w[activesupport actionpack actionmailer activerecord activeresource railties].each do |pkg|
  puts `cd #{pkg} && rm pkg/*.gem; rake repackage && sudo gem install pkg/*.gem`
  puts "\n"*5
  puts `sleep 2`
end

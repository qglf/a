#!/usr/bin/env ruby -r json -r yaml -r open-uri
p'[t]ickets/[u]sers?'
t=gets.chomp
p'field?'
f=gets.chomp
p'value?'
v=JSON.parse(gets)
p t
u="http://shorturl.at/#{{t:'lxTY3',u:'nHIS8'}[t.to_sym]}"
p u
puts JSON.parse(open(u).read).select{|r|[f]==v}.to_yaml

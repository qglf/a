#!/usr/bin/env ruby -ryaml -rjson -ropen-uri
t,f,v=ARGV
u='https://lcampbell-zendesk.github.io/qrgolf/'+t
puts JSON.load(open(u)).filter{|r|r[f]==JSON.load(v)}.to_yaml

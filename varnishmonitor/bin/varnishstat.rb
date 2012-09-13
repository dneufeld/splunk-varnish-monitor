#!/usr/bin/env ruby
#
# Retrieves information using the varnishstat command and dumps into k/v format to stdout
#

Dir.chdir File.dirname(__FILE__)

results = `varnishstat -1`

results = results.gsub(/db(\d+):keys=(\d+),expires=(\d+)/, 'db\1_keys:\2,db\1_expires:\3')
results = results.gsub(/(\w+)\s+(\d+)\s+.*$/, '\1=\2')

print results
print "\n"

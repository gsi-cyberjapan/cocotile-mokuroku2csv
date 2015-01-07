#!/usr/bin/env ruby

last = nil
geojsonl = nil

def write(geojsonl, path)
  print "#{path}\t#{geojsonl.join(',')}\n"
end

while gets
  r = $_.strip.split("\t")
  current = r[0]
  if current != last
    write(geojsonl, last) unless last.nil?
    geojsonl = []
  end
  geojsonl << r[1]
  last = current
end
write(geojsonl, last)

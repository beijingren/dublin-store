# encoding: utf-8

ARGV.each do |filename|
  text = File.read(filename)
  text = text.gsub(/([，。！、“”「」])/, "\n<pc>" + '\1' + "</pc>\n")
  text = text.gsub(/《(.*)》/, "\n<pc>《</pc>\n<title>" + '\1' + "</title>\n<pc>》</pc>\n")
  text = text.gsub(/[△○•]/, '')
  puts text
end

# encoding: utf-8


TEI_FOOTER = <<EOL
</p>
</div>

</div> <!-- Chapter -->

</body>
</text>
</TEI>
EOL

ARGV.each do |filename|
  text = File.read(filename)
  text = text.gsub(/([，。！、“”「」：？])/, "\n<pc>" + '\1' + "</pc>\n")
  text = text.gsub(/《(.*)》/, "\n<pc>《</pc>\n<title>" + '\1' + "</title>\n<pc>》</pc>\n")
  text = text.gsub(/[•]/, '')

  juan = File.basename filename, File.extname(filename)
  juan = juan.to_i

TEI_HEADER = <<EOL
<?xml version="1.0" encoding="UTF-8" ?>
<TEI xmlns="http://www.tei-c.org/ns/1.0">
<teiHeader>
<fileDesc>
<titleStmt>
<title xml:lang="zh">欽定四庫全書總目提要</title>
<title xml:lang="en">Annotated Catalog of the Complete Imperial Library</title>
<author>
<name>
<choice>
<sic>紀昀</sic>
</choice>
</name>
</author>
</titleStmt>

<publicationStmt>
<p>This document is published under a CC Attribution-Share Alike License</p>
</publicationStmt>

<sourceDesc>
<p>XXX</p>
</sourceDesc>
</fileDesc>
</teiHeader>

<text>
<body>

<div type="chapter" n="#{juan}">

<div>
<p>
EOL

  puts text
end

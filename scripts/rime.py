# coding=utf-8

for (file, tone) in [('001.txt', u'平'), ('002.txt', u'上'), ('003.txt', u'去'), ('004.txt', u'入')]:
    with open(file, 'r') as f:
        for line in f:
            rime_line = line.decode('utf-8').rstrip().split(" ")
            rime_head = rime_line[0]
            for rime in rime_line:
                print u"ClassAssertion(:Glyph :{})".format(rime).encode('utf-8')
                print u'DataPropertyAssertion(:PSY :{} "{}"^^xsd:string)'.format(rime, rime_head).encode('utf-8')
                print u'DataPropertyAssertion(:tone :{} "{}"^^xsd:string)'.format(rime, tone).encode('utf-8')
        print '\n'

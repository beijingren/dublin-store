# coding=utf-8

with open('GY_ping.txt', 'r') as f:
    for line in f:
        rime_line = line.decode('utf-8').rstrip().split(" ")
        rime_head = rime_line[0]
        for rime in rime_line:
            print u"ClassAssertion(:Glyph :{})".format(rime)
            print u'DataPropertyAssertion(:rime :{} "{}"^^xsd:string)'.format(rime, rime_head)
            print u'DataPropertyAssertion(:tone :{} "平"^^xsd:string)'.format(rime)

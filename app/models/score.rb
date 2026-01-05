class Score < ApplicationRecord
before_create :hey
before_update :hey
def hey
samplename=([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
self.samplename=samplename
File.write("./public/uploads/"+samplename+".html", "<lilypond staffsize=34>"+self.content+"</lilypond>")
k=`(cd ./public/uploads/ && lilypond-book #{samplename}.html -f html --output score#{samplename})`
end
end

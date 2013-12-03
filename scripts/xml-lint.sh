
for file in $(find 浙江大學圖書館 -name "*.xml")
do
xmllint --noout --dtdvalid schema/tei_all.dtd $file || echo "INVALID: ${file}"
done

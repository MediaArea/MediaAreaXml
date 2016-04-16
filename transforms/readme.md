# transforms

## MediaTrace vs MicroMediaTrace

MicroMediaTrace is developed as a semantically-lossless but more compact container for MediaTrace. MicroMediaTrace reduces storage requirements, improves parsing speed, and reduces storage needs; it is, however, less human-readable since it labels most elements and attributes with single letters rather than words.

The xsl, micro.xsl and unmicro.xsl, may be used to transform MediaTrace into MicroMediaTrace and to reverse the transformation.

### Transform MediaTrace to MicroMediaTrace

`xsltproc micro.xsl huge_mediatrace.xml > tiny_micromediatrace.xml`

### Transform MicroMediaTrace to MediaTrace

`xsltproc micro.xsl tiny_micromediatrace.xml > huge_mediatrace.xml`

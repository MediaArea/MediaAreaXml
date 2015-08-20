##MediaTrace Data Dictionary

### Introduction

The MediaTrace Data Dictionary offers documentation and definitions for the MediaTrace XML format. MediaTrace XML is a document which itemizes and describes parts of a digital in a way that allows for a highly comprehensive index of a file. MediaTrace XML is supported as an export document by MediaArea utilities, particularly [MediaInfo](https://mediaarea.net/en/MediaInfo) and [MediaConch](https://mediaarea.net/MediaConch).

Most digital container formats are comprised of elemental blocks; MediaTrace XML is intended as a document representation of that elemental structure to show the hierarchical relationship, size, labelling, and contents of each block. For digital container elements which contain binary data (such as the audiovisual payloard of a media file) MediaTrace XML will document the size but not contents of the payload; however; for elemnental contents such as text strings, short binary values, numbers, and dates MediaTrace will document those values.

MediaTrace XML is not intended to fully categorize and sumamrize the significant properties of a digital file but focuses on comprehensively documenting the file structure as a whole to the depth possible by MediaInfoLib's file parsers.

### Additional Resources

Documentation about the MediaTrace format is available at its namespace, https://mediaarea.net/mediatrace/. The XML Schema is available at https://mediaarea.net/mediatrace/mediatrace.xsd. The development history and issue tracker for MediaTrace are available at [GitHub](https://github.com/mediaarea/mediatrace).

## Credits

Developed by [MediaArea](https://mediaarea.ne) in collaboration with the [Museum of Modern Art](https://www.moma.org/). 

### Data Model

The data model of MediaTrace XML is compromised of a few, flexible and generic elements to well support methods of documenting highly diverse sets of digital media. The [MediaTrace Schema](https://mediaarea.net/mediatrace/mediatrace.xsd) includes only three elements: `MediaTrace`, `block`, and `data`. The `MediaTrace` element provides the root level element of the document and contains only `block` elements. The `block` element documents a structural piece or elemental component of a digital file's bitstream. The `block` may then contain either other `block` elements and/or `data` elements. The `data` elements document the lowest-level and most granular aspect of the file's contents. Both `block` and `data` elements share an attribute set which contextualizes the information with byte offsets, additional information, and labelling.

### Entity Semantic Units

#### MediaTrace
    version

#### block
    data
    offset
    name
    info
    info2
    info3
    info4
    size

Semantic Unit      | MediaTrace
-------------------|----------------------------------------------------
Definition         | The version of MediaTrace
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Required

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The `version` declares the release number of MediaInfoLib.
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Optional

Semantic Unit      | Block
-------------------|----------------------------------------------------
Definition         |
Examples           | "Generic section header"
Repeatbility       | Repeatable
Obligation         | Optional
Usage Notes        | Many audiovisual formats are based on chunk-based storage where a block of data will either contain a data payload or other blocks. In QuickTime parlance these blocks are called atoms, in AVI "chunks", and in Matroska, "elements". MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a <block>.

Attribute          | data
-------------------|----------------------------------------------------
Definition         |
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | offset
-------------------|----------------------------------------------------
Definition         | The `offset` expresses the location of the `data` or `block` within a digital file relative to the start of the file and measured in octets.
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | The `name` attribute stores a label associated with the `block` or `data`. The `name` may provide a human-readable label as gathered from the file format's associated specification or the `name` may provide an unprocessed identifier as used internally within the file's structure.
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | info
-------------------|----------------------------------------------------
Definition         | The `info` attribute stores values that have been gathered or interpretted from the `block` or `data` by MediaInfo's file parsers.
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | info2
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information.
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | info3
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | info4
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

Attribute          | size
-------------------|----------------------------------------------------
Definition         |
Examples           |
Repeatbility       | Repeatable
Obligation         | Optional

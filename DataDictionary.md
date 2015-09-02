##MediaTrace Data Dictionary

### Introduction

The MediaTrace Data Dictionary offers documentation and definitions for the MediaTrace XML format. MediaTrace XML is a document which itemizes and describes parts of a digital in a way that allows for a highly comprehensive index of a file. MediaTrace XML is supported as an export document by MediaArea utilities, particularly [MediaInfo](https://mediaarea.net/en/MediaInfo) and [MediaConch](https://mediaarea.net/MediaConch).

Most digital container formats are comprised of elemental blocks; MediaTrace XML is intended as a document representation of that elemental structure to show the hierarchical relationship, size, labelling, and contents of each block. 

MediaTraceXML will document values of elemental contents such as text strings, short binary values, numbers, and dates. For container elements that contain binary data (such as the audiovisual payload of a media file, for example), MediaTrace will document only the size, and no the contents of the payload itself. 

MediaTrace XML is not intended to fully categorize and sumamrize the significant properties of a digital file, but instead focuses on comprehensively documenting the file structure as a whole, with consideration to the depth possible by MediaInfoLib's file parsers.

### Additional Resources

Documentation about the MediaTrace format is available at its namespace, https://mediaarea.net/mediatrace/. The XML Schema is available at https://mediaarea.net/mediatrace/mediatrace.xsd. The development history and issue tracker for MediaTrace are available at [GitHub](https://github.com/mediaarea/mediatrace).

## Credits

Developed by [MediaArea](https://mediaarea.ne) in collaboration with the [Museum of Modern Art](https://www.moma.org/). 

### Data Model

The data model of MediaTrace XML is comprised of several flexible and generic elements to support methods for documenting highly diverse sets of digital media. The [MediaTrace Schema](https://mediaarea.net/mediatrace/mediatrace.xsd) contains only three elements: `MediaTrace`, `block`, and `data`. The `MediaTrace` element provides the root level element of the document and contains only `block` elements. The `block` element documents a structural piece or elemental component of a digital file's bitstream. The `block` may then contain either other `block` elements or `data` elements. The `data` elements document the lowest-level and most granular aspect of the file's contents. Both `block` and `data` elements share an attribute set which contextualizes the information with byte offsets, additional information, and labelling.

### Semantics

Element            | MediaTrace
-------------------|----------------------------------------------------
Definition         | `MediaTrace` is the root-element of the XML document and contains a structural report of a digital file comprised of logically arranged `block` and `data` elements.
Examples           | See MediaTrace's [GitHub](https://github.com/mediaarea/mediatrace) repository for example MediaTrace XML documents.
Repeatability      | Not repeatable
Obligation         | Required

Attribute          | ref
-------------------|----------------------------------------------------
Definition         | The 'ref' attribute identifies the path of the file from the root directory.
Examples           | '/Users/mediaconch/ffv1_0.mkv'
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The `version` declares the release number of MediaInfoLib.
Examples           | `0.7.74`
Repeatability      | Not repeatable
Obligation         | Optional

Element            | creatingApplication
-------------------|----------------------------------------------------
Definition         | The 'creatingApplication' element identifies the application used to produce the MediaTrace document. 
Examples           | 'MediaInfo'
Repeatability      | Not repeatable
Obligation         | Optional

Element            | creatingLibrary
-------------------|----------------------------------------------------
Definition         | The 'creatingLibrary' element identifies the library used with the associated application. 
Examples           | 'MediaInfoLib'
Repeatbility       | Not repeatable
Obligation         | Optional

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The 'version' attribute specifies the version of the creating application. 
Examples           | '0.7.76'
Repeatbility       | Not repeatable
Obligation         | Required

Attribute          | url
-------------------|----------------------------------------------------
Definition         | The 'url' attribute provides the uniform resource locator, i.e. web address for the creating application or library.
Examples           | 'https://mediaarea.net/MediaInfo'
Repeatbility       | Not repeatable
Obligation         | Optional

Attribute          | build_date
-------------------|----------------------------------------------------
Definition         | The 'build_date' attribute specifies the date in which the creating application binary was built, as a string in YYYY-MM-DD format. 
Examples           | '2014-09-13'
Repeatbility       | Not repeatable
Obligation         | Optional 

Attribute          | build_time
-------------------|----------------------------------------------------
Definition         | The 'build_time' attribute specifies the date in which the creating application binary was built, as a string in HH:MM:SSTZ format. 
Examples           | '12:42:45LTZ'
Repeatbility       | Not repeatable
Obligation         | Optional
 

Attribute          | compiler_ident
-------------------|----------------------------------------------------
Definition         | The 'compiler_ident' attribute identifies the compiler used with the creating application. 
Examples           | 'Apple LLVM version 6.1.0 (clang-602.0.49) (based on LLVM 3.6.0svn)'
Repeatbility       | Not repeatable
Obligation         | Optional

Element            | block
-------------------|----------------------------------------------------
Definition         | The `block` element documents a structural piece or elemental component of a digital file's bitstream. The `block` may then contain either other `block` elements and/or `data` elements.
Examples           | `<block offset='719' name='Flags' size='1'>`
                   | `    <data offset='726' name='KeyFrame'>1</data>`
                   | `    <data offset='723' name='Reserved'>0</data>`
                   | `    <data offset='722' name='Invisible'>0</data>`
                   | `    <data offset='720' name='Lacing'>0</data>`
                   | `    <data offset='719' name='Discardable'>0</data>`
                   | `</block>`
Repeatability      | Repeatable
Obligation         | Optional
Usage Notes        | Many audiovisual formats are based on chunk-based storage in which a block of data will contain either a data payload or other blocks. In QuickTime parlance, these blocks are called 'atoms'; in AVI 'chunks', and in Matroska, 'elements'. MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a block.

Element            | data
-------------------|----------------------------------------------------
Definition         | The `data` elements document the lowest-level and most granular aspect of the file's contents.
Examples           | `<data offset='552' name='Data'>Lavf56.40.101</data>`
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | offset
-------------------|----------------------------------------------------
Definition         | The `offset` is an integer that expresses the location of the `data` or `block` within a digital file relative to the start of the file, measured in octets.
Examples           | `0`, `1000`, `298346234`
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | The `name` attribute stores a label associated with the `block` or `data`. The `name` may provide a human-readable label as gathered from the file format's associated specification or the `name` may provide an unprocessed identifier as used internally within the file's structure.
Examples           | `TimecodeScale`
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info
-------------------|----------------------------------------------------
Definition         | The `info` attribute stores values that have been gathered or interpretted from the `block` or `data` by MediaInfo's file parsers.
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info2
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information.
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info3
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info4
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional


Attribute          | info5
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info6
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info7
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | info8
-------------------|----------------------------------------------------
Definition         | Same as `info` but provides additional contextual information
Examples           |
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | size
-------------------|----------------------------------------------------
Definition         | The `size` is an integer that expresses the amount of data being described by the `data` or `block` element measured in octets.
Examples           | `11`
Repeatability      | Not repeatable
Obligation         | Optional

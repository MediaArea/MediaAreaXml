##MediaTrace Data Dictionary

### Introduction

The MediaTrace Data Dictionary offers documentation and definitions for the MediaTrace XML format. MediaTrace XML is a document which itemizes and describes parts of a digital in a way that allows for a highly comprehensive index of a file. MediaTrace XML is supported as an export document by MediaArea utilities, particularly [MediaInfo](https://mediaarea.net/en/MediaInfo) and [MediaConch](https://mediaarea.net/MediaConch).

Most digital container formats are comprised of elemental blocks; MediaTrace XML is intended as a document representation of that elemental structure to show the hierarchical relationship, size, labelling, and contents of each block. For digital container elements which contain binary data (such as the audiovisual payloard of a media file) MediaTrace XML will document the size but not contents of the payload; however; for elemnental contents such as text strings, short binary values, numbers, and dates MediaTrace will document those values.

MediaTrace XML is not intended to fully categorize and sumamrize the significant properties of a digital file but focuses on comprehensively documenting the file structure as a whole to the depth possible by MediaInfoLib's file parsers.

### Additional Resources

Documentation about the MediaTrace format is available at its namespace, https://mediaarea.net/mediatrace/. The XML Schema is available at https://mediaarea.net/mediatrace/mediatrace.xsd. The development history and issue tracker for MediaTrace are available at [GitHub](https://github.com/mediaarea/mediatrace).

## Credits

Developed by [MediaArea](https://mediaarea.ne) in collaboration with the [Museum of Modern Art](https://www.moma.org/). 

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
Rationale          | Each trace XML must be tied to a specific version of MediaTrace
Data Constraint    | Container
Applicability      | Applicable
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The version of MediaTrace
Rationale          | Each trace XML must be tied to a specific version of MediaTrace
Data Constraint    | Container
Applicability      | Applicable
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Semantic Unit      | Block
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           | "Generic section header"
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        | Many audiovisual formats are based on chunk-based storage where a block of data will either contain a data payload or other blocks. In QuickTime parlance these blocks are called atoms, in AVI "chunks", and in Matroska, "elements". MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a <block>.

Attribute          | data
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | offset
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | name
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | info
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | info2
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | info3
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | info4
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | size
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

##MediaTrace Data Dictionary

### Introduction

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
Usage Notes        | Many audiovisual formats are based on chunk-based storage where a block of data will either contain a data payload or other blocks. In QuickTime parlance these blocks are called atoms, in AVI “chunks”, and in Matroska, “elements”. MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a <block>.

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

##MediaTrace Data Dictionary

###Introduction

###Entity Semantic Units

####1.1 MediaTrace
   1.1.1 version
####1.2 block
   1.2.1 data
   1.2.2 offset
   1.2.3 name
   1.2.4 info
   1.2.5 info2
   1.2.6 info3
   1.2.7 info4
   1.2.8 size


Semantic Unit      | 1.1 MediaTrace
-------------------|----------------------------------------------------
Definition         | The version of MediaTrace
Rationale          | Each trace XML must be tied to a specific version of MediaTrace
Data Constraint    | Container
Applicability      | Applicable
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.1.1 version
-------------------|----------------------------------------------------
Definition         | The version of MediaTrace
Rationale          | Each trace XML must be tied to a specific version of MediaTrace
Data Constraint    | Container
Applicability      | Applicable
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Semantic Unit      | 1.2 Block
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           | "Generic section header"
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        | Many audiovisual formats are based on chunk-based storage where a block of data will either contain a data payload or other blocks. In QuickTime parlance these blocks are called atoms, in AVI “chunks”, and in Matroska, “elements”. MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a <block>.

Attribute          | 1.2.1 data
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.2 offset
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.3 name
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.4 info
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.5 info2
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.6 info3
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.7 info4
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

Attribute          | 1.2.8 size
-------------------|----------------------------------------------------
Definition         |
Rationale          |
Data Constraint    | Container
Applicability      | Applicable
Examples           |
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes        |

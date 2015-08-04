##MediaTrace Data Dictionary 

###Entity Semantic Units

####1.1 MediaTrace
	1.1.1 version
####1.2 block
	1.2.1 blockType
####1.3 data	
	1.3.1 name
	1.3.2 info
	1.3.3 info2
	1.3.4 info3
	1.3.5 info4
	1.3.6 size
			
Semantic Unit      | 1.1 MediaTrace
-------------------|----------------------------------------------------
Semantic Components| 1.1.1 version
Definition         | The version of MediaTrace
Rationale          | Each trace XML must be tied to a specific version of MediaTrace
Data Constraint    | Container
Object Category	   | Representation
Applicability      | Applicable
Examples           | "0.7.74"
Repeatbility       | Not repeatable
Obligation         | Allow minoccurs=0
Usage Notes		   | 

Semantic Unit      | 1.2 Block
-------------------|----------------------------------------------------
Semantic Components| 1.2.1 blockType
Definition         | 
Rationale          | 
Data Constraint    | Container
Object Category	   | File
Applicability      | Applicable
Examples           | "Generic section header"
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes		   | Many audiovisual formats are based on chunk-based storage where a block of data will either contain a data payload or other blocks. In QuickTime parlance these blocks are called atoms, in AVI “chunks”, and in Matroska, “elements”. MediaTrace will attempt to parse apart each block into subdivisions and report on their contents. Whether the source format specification calls it element, atom, chunk, or another term, MediaTrace will call it a <block>. 

Semantic Unit      | 1.3 Data
-------------------|----------------------------------------------------
Semantic Components| 1.3.1 name
				   | 1.3.2 info
				   | 1.3.3 info2
			       | 1.3.4 info3
				   | 1.3.5 info4
			       | 1.3.6 size
Definition         | 
Rationale          | 
Data Constraint    | Container
Object Category	   | File
Applicability      | Applicable
Examples           | "Magic number" ; "XPDS"
Repeatbility       | Repeatable
Obligation         | Allow minoccurs=0
Usage Notes		   | In MediaTrace the contents of the block are described in a <data> element.



			
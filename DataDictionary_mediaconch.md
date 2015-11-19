##MediaConch Data Dictionary

### Introduction

The MediaConch Data Dictionary offers documentation and definitions for the MediaConch XML format. MediaConch XML is supported as an export document by MediaArea utility [MediaConch](https://mediaarea.net/MediaConch).

Developed by [MediaArea](https://mediaarea.net).

### Semantics

Element            | MediaConch
-------------------|----------------------------------------------------
Definition         | The MediaConch element is the root-element of the MediaConch XML document.
Examples           | See MediaConch's GitHub repository for example MediaConch XML documents.
Repeatability      | Not repeatable
Obligation         | Required

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The version attribute declares the release number of the MediaConch XML document.
Is Attribute Of    | MediaConch
Examples           | version="0.1"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | media
-------------------|----------------------------------------------------
Definition         | The media element expresses the file selected for conformance checking.
Examples           | <media ref="/Users/erikpiil/MediaConch/files/Testing_Multiple_Files_3.mkv">
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | ref
-------------------|----------------------------------------------------
Definition         | The ref attribute identifies the path of the file from the root directory.
Is Attribute Of    | media
Examples           | ref="/Users/erikpiil/MediaConch/files/Testing_Multiple_Files_3.mkv"
Repeatability      | Repeatable
Obligation         | Optional



Element            | implementationChecks
-------------------|----------------------------------------------------
Definition         | The implementationChecks element encompasses individual checks utilized for (in the case of MediaConch) EBML, Matroska, and FFV1. 
Examples           | See MediaConch's GitHub repository for an example of an EBML implementation checker.
Repeatability      | Repeatable
Obligation         | Optional



Element            | name
-------------------|----------------------------------------------------
Definition         | The name element identifies the associated policy or implementation checker.  
Examples           | <name>MediaConch EBML Implementation Checker</name>
Repeatability      | Not repeatable
Obligation         | Optional



Element            | description
-------------------|----------------------------------------------------
Definition         | The description element 
Examples           | <description>This policy checks that the file follows general rules of file conformance.</description>
Repeatability      | Not repeatable
Obligation         | Optional



Element            | policyChecks
-------------------|----------------------------------------------------
Definition         | The policyChecks element encompasses individual policy checks. 
Examples           | See MediaConch's GitHub repository for an example of policy check XMLs.
Repeatability      | Repeatable
Obligation         | Optional



Element            | check
-------------------|----------------------------------------------------
Definition         | The check element encompasses 
Examples           | <check name="General Format must be Matroska">
					 <check icid="EBML-ELEM-START" version="1">
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | The name attribute specifies the individual policy or implementation check.
Is Attribute Of    | check
Examples           | name="General Format must be Matroska"
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | icid
-------------------|----------------------------------------------------
Definition         | The icid attribute identifies the implementation check using a defined code. 
Is Attribute Of    | check
Examples           | icid="EBML-ELEM-START"
Repeatability      | 
Obligation         | Optional

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The version attribute identifies the version of the implementation check. 
Is Attribute Of    | check
Examples           | version="1"
Repeatability      | Repeatable
Obligation         | Optional



Element            | context
-------------------|----------------------------------------------------
Definition         | The context element encompasses defined metadata fields and values for policy checking. 
Examples           | <context field="Format" value="Matroska"/>
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | field
-------------------|----------------------------------------------------
Definition         | The field attribute identifies the selected metadata field for policy checking. 
Is Attribute Of    | context
Examples           | field="Format"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | value
-------------------|----------------------------------------------------
Definition         | The value attribute specifies the value of the associated check's metadata field. 
Is Attribute Of    | context
Examples           | value="Matroska"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | test
-------------------|----------------------------------------------------
Definition         | The test element encompasses several file metadata characteristics and outcomes when compared to pre-determined contextual checks. 
Examples           | <test tracktype="General" actual="Matroska" outcome="pass"/>
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | tracktype
-------------------|----------------------------------------------------
Definition         | The tracktype attribute specifies the track type, e.g., General, Video, Audio, Timecode, etc.
Is Attribute Of    | test
Examples           | tracktype="General"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | tracktypeorder
-------------------|----------------------------------------------------
Definition         | The tracktypeorder attribute specifies the order of the track type in a given file. 
Is Attribute Of    | test
Examples           | tracktypeorder="1"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | trackid
-------------------|----------------------------------------------------
Definition         | The trackid attribute specifies the ID of the associated track. 
Is Attribute Of    | test
Examples           | trackid="1"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | actual
-------------------|----------------------------------------------------
Definition         | The actual attribute specifies the actual value of the tested field from within a given check. 
Is Attribute Of    | test
Examples           | actual="Matroska"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | outcome
-------------------|----------------------------------------------------
Definition         | The outcome attribute specifies a "pass" or "fail" test outcome of a given check. 
Is Attribute Of    | test
Examples           | outcome="pass"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | reason
-------------------|----------------------------------------------------
Definition         | The reason attribute specifies a reason for a "failed" outcome check. 
Is Attribute Of    | test
Examples           | reason="is not equal"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | value
-------------------|----------------------------------------------------
Definition         | The value element presents metadata characteristics from a given file (offset, field name) for testing against specific implementation checks. 
Examples           | <value offset="12" name="EBMLVersion">646</value>
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | offset
-------------------|----------------------------------------------------
Definition         | The offset attribute specifies the offset of the specified metadata field, in bytes. 
Is Attribute Of    | value
Examples           | offset="12"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | The name attribute specifies the associated name of the metadata field. 
Is Attribute Of    | value
Examples           | name="EBMLVersion"
Repeatability      | Not repeatable
Obligation         | Optional







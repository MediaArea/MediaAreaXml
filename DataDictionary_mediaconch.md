##MediaConch Data Dictionary

### Introduction

The MediaConch Data Dictionary offers documentation and definitions for the MediaConch XML format. MediaConch XML is supported as an export document by MediaArea utilities, particularly [MediaConch](https://mediaarea.net/MediaConch).

Developed by [MediaArea](https://mediaarea.net).

### Semantics

Element            | MediaConch
-------------------|----------------------------------------------------
Definition         | Root-element of the XML document 
Examples           | See MediaConch's GitHub repository for example MediaConch XML documents.
Repeatability      | Not repeatable
Obligation         | Required

Attribute          | version
-------------------|----------------------------------------------------
Definition         | The version declares the release number of MediaConch XML
Is Attribute Of    | MediaConch
Examples           | version="0.1"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | media
-------------------|----------------------------------------------------
Definition         | Identifies the path of the file from the root directory.
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
Definition         | 
Examples           | <name>MediaConch EBML Implementation Checker</name>
Repeatability      | Repeatable
Obligation         | Optional



Element            | name
-------------------|----------------------------------------------------
Definition         | 
Examples           | <name>MediaConch EBML Implementation Checker</name>
Repeatability      | Not repeatable
Obligation         | Optional



Element            | description
-------------------|----------------------------------------------------
Definition         | 
Examples           | <description>This policy checks that the file follows general rules of file conformance.</description>
Repeatability      | Not repeatable
Obligation         | Optional



Element            | policyChecks
-------------------|----------------------------------------------------
Definition         | 
Examples           | 
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | version
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | policyChecks
Examples           | 
Repeatability      | Repeatable
Obligation         | Optional



Element            | check
-------------------|----------------------------------------------------
Definition         | 
Examples           | <check name="General Format must be Matroska">
					 <check icid="EBML-ELEM-START" version="1">
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | check
Examples           | name="General Format must be Matroska"
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | icid
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | check
Examples           | icid="EBML-ELEM-START"
Repeatability      | 
Obligation         | Optional

Attribute          | version
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | check
Examples           | version="1"
Repeatability      | Repeatable
Obligation         | Optional



Element            | context
-------------------|----------------------------------------------------
Definition         | 
Examples           | <context field="Format" value="Matroska"/>
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | field
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | context
Examples           | field="Format"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | value
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | context
Examples           | value="Matroska"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | test
-------------------|----------------------------------------------------
Definition         | 
Examples           | <test tracktype="General" actual="Matroska" outcome="pass"/>
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | tracktype
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | tracktype="General"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | tracktypeorder
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | tracktypeorder="1"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | trackid
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | trackid="1"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | actual
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | actual="Matroska"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | outcome
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | outcome="pass"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | reason
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | test
Examples           | reason="is not equal"
Repeatability      | Not repeatable
Obligation         | Optional



Element            | value
-------------------|----------------------------------------------------
Definition         | 
Examples           | <value offset="12" name="EBMLVersion">646</value>
Repeatability      | Repeatable
Obligation         | Optional

Attribute          | offset
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | value
Examples           | offset="12"
Repeatability      | Not repeatable
Obligation         | Optional

Attribute          | name
-------------------|----------------------------------------------------
Definition         | 
Is Attribute Of    | value
Examples           | name="EBMLVersion"
Repeatability      | Not repeatable
Obligation         | Optional







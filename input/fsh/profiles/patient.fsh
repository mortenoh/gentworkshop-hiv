Profile: DHIS2HIVBasePatient
Parent: DHIS2BasePatient
Title: "DHIS2 HIV Patient profile"
Description: "DHIS2 HIV sPatient profile"


* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false  // can be omitted, since false is the default
* identifier ^slicing.description = "Slices on identifier type"
* identifier contains programNationalId 1..1 MS
* identifier[programNationalId].type = http://dhis2.org/identifiertypes#nationalidentifier

* extension contains 
   PatientSexAtBirth named patientSexAtBirth 1..1 and 
   HIVEnrollmentOrgUnit named hivEnrollmentOrgUnit 0..1
   keyPopGroup named keyPopGroup 0..*

Extension: PatientSexAtBirth
Id: PatientSexAtBirth
Title: ""
Description: "Sex at Birth."
* value[x] only boolean


Extension: HIVEnrollmentOrgUnit
Id: HIVEnrollmentOrgUnit
Title: ""
Description: "Current Enrollment Org Unit."
* value[x] only Reference(OrgUnitOrganization)


Extension: KeyPopGroup
Id: KeyPopGroup
Title: ""
Description: "Key Pop group."
* value[x] only Coding

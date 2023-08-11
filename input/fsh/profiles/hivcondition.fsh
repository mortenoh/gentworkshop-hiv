Profile:        HIVCondition
Parent:         Condition
Id:             hiv-condition
Title:          "HIV Condition"

* code 1..1
* code = http://hl7.org/fhir/sid/icd-10-cm#B20 // To be confirmed
* recordedDate 1..1



Profile: HIVResultObservation
Parent: Observation

* issued 1..1
* method 0..1 MS 
//* method from ValueSetXXXXX
* extension contains 
  FacilityLevelTestingEntryPoint named facilityLevelTestingEntryPoint 0..1


Extension: FacilityLevelTestingEntryPoint
Id: FacilityLevelTestingEntryPoint
Title: ""
Description: "Facility Level Testing Entry Point."
* value[x] only Coding 
//* valueCoding  from ValueSetXXXXX // This is how we will add the valueset

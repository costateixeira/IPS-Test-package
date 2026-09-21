# IPS Consumer Test Plan - IPS: TestPlans and Gherkin for the IPS actors v0.1.0

## TestPlan: IPS Consumer Test Plan (Experimental) 

 
Test plan for the **IPS Consumer** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/). An IPS Consumer actor is a system that receives an IPS document and uses the content of this document. Each `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim. The tests declare which specification obligations they cover (240 element obligations across the plan); the coverage matrix is checked mechanically against the specification package. 

**Scopes**

* **Reference**: [Consumer (IPS)](http://hl7.org/fhir/uv/ips/2.0.1/ActorDefinition-Consumer.html)
  * **Description**: The IPS Consumer actor — a system that receives an IPS document and uses its content — is the system under test.

**1 Suite: The document: Bundle and Composition**

Rule: The document: Bundle and Composition — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-001 Bundle (IPS) — the Consumer handles 3 elements and displays 1
  * **Description**: Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-002 Composition (IPS) — the Consumer handles 81 elements and displays 77
  * **Description**: Covers Composition-uv-ips: Composition.text, Composition.identifier, Composition.status, Composition.type, Composition.subject, Composition.subject.reference, Composition.date, Composition.author, Composition.title, Composition.attester, Composition.attester.mode, Composition.attester.time, Composition.attester.party, Composition.custodian, Composition.event:careProvisioningEvent, Composition.event:careProvisioningEvent.code, Composition.event:careProvisioningEvent.period, Composition.section, Composition.section.title, Composition.section.code, Composition.section.text, Composition.section:sectionProblems, Composition.section:sectionProblems.title, Composition.section:sectionProblems.text, Composition.section:sectionProblems.entry:problem, Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies, Composition.section:sectionAllergies.title, Composition.section:sectionAllergies.text, Composition.section:sectionAllergies.entry:allergyOrIntolerance, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications, Composition.section:sectionMedications.title, Composition.section:sectionMedications.text, Composition.section:sectionMedications.entry:medicationStatementOrRequest, Composition.section:sectionMedications.emptyReason, Composition.section:sectionImmunizations, Composition.section:sectionImmunizations.title, Composition.section:sectionImmunizations.text, Composition.section:sectionImmunizations.entry:immunization, Composition.section:sectionResults, Composition.section:sectionResults.title, Composition.section:sectionResults.text, Composition.section:sectionResults.entry:results-observation-laboratory-pathology, Composition.section:sectionResults.entry:results-observation-radiology, Composition.section:sectionResults.entry:results-diagnosticReport, Composition.section:sectionProceduresHx, Composition.section:sectionProceduresHx.title, Composition.section:sectionProceduresHx.text, Composition.section:sectionProceduresHx.entry:procedure, Composition.section:sectionMedicalDevices, Composition.section:sectionMedicalDevices.title, Composition.section:sectionMedicalDevices.text, Composition.section:sectionMedicalDevices.entry:deviceStatement, Composition.section:sectionAdvanceDirectives, Composition.section:sectionAdvanceDirectives.title, Composition.section:sectionAdvanceDirectives.text, Composition.section:sectionAlerts, Composition.section:sectionAlerts.title, Composition.section:sectionAlerts.text, Composition.section:sectionFunctionalStatus, Composition.section:sectionFunctionalStatus.title, Composition.section:sectionFunctionalStatus.text, Composition.section:sectionPastProblems, Composition.section:sectionPastProblems.title, Composition.section:sectionPastProblems.text, Composition.section:sectionPregnancyHx, Composition.section:sectionPregnancyHx.title, Composition.section:sectionPregnancyHx.text, Composition.section:sectionPatientStory, Composition.section:sectionPatientStory.title, Composition.section:sectionPatientStory.text, Composition.section:sectionPlanOfCare, Composition.section:sectionPlanOfCare.title, Composition.section:sectionPlanOfCare.text, Composition.section:sectionSocialHistory, Composition.section:sectionSocialHistory.title, Composition.section:sectionSocialHistory.text, Composition.section:sectionVitalSigns, Composition.section:sectionVitalSigns.title, Composition.section:sectionVitalSigns.text.
  * **Operation**: gherkin/Scenario

-------

**2 Suite: The people and organisations**

Rule: The people and organisations — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-003 Patient (IPS) — the Consumer handles 11 elements and displays 11
  * **Description**: Covers Patient-uv-ips: Patient.identifier, Patient.name, Patient.name.use, Patient.name.text, Patient.name.family, Patient.name.given, Patient.telecom, Patient.gender, Patient.birthDate, Patient.address, Patient.generalPractitioner.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-004 Practitioner (IPS) — the Consumer handles 5 elements and displays 5
  * **Description**: Covers Practitioner-uv-ips: Practitioner.name, Practitioner.name.family, Practitioner.name.given, Practitioner.telecom, Practitioner.address.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-005 PractitionerRole (IPS) — the Consumer handles 1 element and displays 1
  * **Description**: Covers PractitionerRole-uv-ips: PractitionerRole.organization.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-006 Organization (IPS) — the Consumer handles 3 elements and displays 3
  * **Description**: Covers Organization-uv-ips: Organization.name, Organization.telecom, Organization.address.
  * **Operation**: gherkin/Scenario

-------

**3 Suite: The required sections: problems, allergies, medications**

Rule: The required sections: problems, allergies, medications — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-007 AllergyIntolerance (IPS) — the Consumer handles 10 elements and displays 9
  * **Description**: Covers AllergyIntolerance-uv-ips: AllergyIntolerance.clinicalStatus, AllergyIntolerance.type, AllergyIntolerance.code, AllergyIntolerance.patient, AllergyIntolerance.patient.reference, AllergyIntolerance.onset[x], AllergyIntolerance.onset[x]:onsetDateTime, AllergyIntolerance.reaction, AllergyIntolerance.reaction.manifestation, AllergyIntolerance.reaction.severity.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-008 Condition (IPS) — the Consumer handles 8 elements and displays 7
  * **Description**: Covers Condition-uv-ips: Condition.clinicalStatus, Condition.category, Condition.severity, Condition.code, Condition.subject, Condition.subject.reference, Condition.onset[x], Condition.onset[x]:onsetDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-009 Medication (IPS) — the Consumer handles 5 elements and displays 5
  * **Description**: Covers Medication-uv-ips: Medication.code, Medication.form, Medication.ingredient, Medication.ingredient.item[x], Medication.ingredient.strength.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-010 MedicationRequest (IPS) — the Consumer handles 6 elements and displays 5
  * **Description**: Covers MedicationRequest-uv-ips: MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.subject.reference, MedicationRequest.dosageInstruction, MedicationRequest.dosageInstruction.text, MedicationRequest.dosageInstruction.timing.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-011 MedicationStatement (IPS) — the Consumer handles 8 elements and displays 7
  * **Description**: Covers MedicationStatement-uv-ips: MedicationStatement.medication[x], MedicationStatement.subject, MedicationStatement.subject.reference, MedicationStatement.effective[x], MedicationStatement.effective[x]:effectiveDateTime, MedicationStatement.dosage, MedicationStatement.dosage.text, MedicationStatement.dosage.timing.
  * **Operation**: gherkin/Scenario

-------

**4 Suite: The recommended sections: immunizations, results, procedures, devices**

Rule: The recommended sections: immunizations, results, procedures, devices — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-012 Immunization (IPS) — the Consumer handles 6 elements and displays 5
  * **Description**: Covers Immunization-uv-ips: Immunization.status, Immunization.vaccineCode, Immunization.patient, Immunization.patient.reference, Immunization.occurrence[x], Immunization.occurrence[x]:occurrenceDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-013 Observation Results - Laboratory/Pathology (IPS) — the Consumer handles 11 elements and displays 10
  * **Description**: Covers Observation-results-laboratory-pathology-uv-ips: Observation.category:laboratory, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.value[x]:valueQuantity, Observation.value[x]:valueCodeableConcept, Observation.component.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-014 Observation Results - Radiology (IPS) — the Consumer handles 9 elements and displays 8
  * **Description**: Covers Observation-results-radiology-uv-ips: Observation.category:radiology, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.component.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-015 DiagnosticReport (IPS) — the Consumer handles 7 elements and displays 6
  * **Description**: Covers DiagnosticReport-uv-ips: DiagnosticReport.code, DiagnosticReport.subject, DiagnosticReport.subject.reference, DiagnosticReport.effective[x], DiagnosticReport.effective[x]:effectiveDateTime, DiagnosticReport.performer, DiagnosticReport.result:observation-results.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-016 Specimen (IPS) — the Consumer handles 3 elements and displays 2
  * **Description**: Covers Specimen-uv-ips: Specimen.type, Specimen.subject, Specimen.subject.reference.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-017 ImagingStudy (IPS) — the Consumer handles 12 elements and displays 11
  * **Description**: Covers ImagingStudy-uv-ips: ImagingStudy.identifier, ImagingStudy.subject, ImagingStudy.subject.reference, ImagingStudy.started, ImagingStudy.procedureCode, ImagingStudy.reasonCode, ImagingStudy.series, ImagingStudy.series.uid, ImagingStudy.series.modality, ImagingStudy.series.instance, ImagingStudy.series.instance.uid, ImagingStudy.series.instance.sopClass.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-018 Procedure (IPS) — the Consumer handles 5 elements and displays 4
  * **Description**: Covers Procedure-uv-ips: Procedure.code, Procedure.subject, Procedure.subject.reference, Procedure.performed[x], Procedure.performed[x]:performedDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-019 Device - Performer or Observer (IPS) — the Consumer handles 3 elements and displays 3
  * **Description**: Covers Device-observer-uv-ips: Device.identifier, Device.manufacturer, Device.modelNumber.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-020 Device (IPS) — the Consumer handles 1 element and displays 1
  * **Description**: Covers Device-uv-ips: Device.type.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-021 DeviceUseStatement (IPS) — the Consumer handles 5 elements and displays 4
  * **Description**: Covers DeviceUseStatement-uv-ips: DeviceUseStatement.subject, DeviceUseStatement.subject.reference, DeviceUseStatement.timing[x], DeviceUseStatement.timing[x]:timingDateTime, DeviceUseStatement.device.
  * **Operation**: gherkin/Scenario

-------

**5 Suite: The optional sections: alerts, pregnancy, social history**

Rule: The optional sections: alerts, pregnancy, social history — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-022 Flag - Alert (IPS) — the Consumer handles 5 elements and displays 4
  * **Description**: Covers Flag-alert-uv-ips: Flag.extension:flag-priority, Flag.category, Flag.code, Flag.subject, Flag.subject.reference.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-023 Observation Pregnancy - Expected Delivery Date (IPS) — the Consumer handles 5 elements and displays 4
  * **Description**: Covers Observation-pregnancy-edd-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-024 Observation Pregnancy - Outcome (IPS) — the Consumer handles 5 elements and displays 4
  * **Description**: Covers Observation-pregnancy-outcome-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueQuantity.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-025 Observation Pregnancy - Status (IPS) — the Consumer handles 7 elements and displays 6
  * **Description**: Covers Observation-pregnancy-status-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueCodeableConcept, Observation.hasMember, Observation.hasMember.reference.
  * **Operation**: gherkin/Scenario

-------

**6 Suite: Data types used throughout**

Rule: Data types used throughout — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-026 Observation Social History - Tobacco Use (IPS) — the Consumer handles 4 elements and displays 3
  * **Description**: Covers Observation-tobaccouse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-027 Observation Social History - Alcohol Use (IPS) — the Consumer handles 4 elements and displays 3
  * **Description**: Covers Observation-alcoholuse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-028 Codeable Concept (IPS) — the Consumer handles 2 elements and displays 1
  * **Description**: Covers CodeableConcept-uv-ips: CodeableConcept.coding, CodeableConcept.text.
  * **Operation**: gherkin/Scenario
* **Name**: ips-consumer-029 Coding with translations — the Consumer handles 2 elements
  * **Description**: Covers Coding-uv-ips: Coding.system, Coding.code.
  * **Operation**: gherkin/Scenario

-------

**7 Suite: Documents with missing information are handled, not rejected**

Rule: Documents with missing information are handled, not rejected — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-900 Required sections with an emptyReason and a minimal document are accepted
  * **Description**: Covers Composition-uv-ips: Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications.emptyReason.
  * **Operation**: gherkin/Scenario

-------

**8 Suite: A Consumer that is a FHIR server is driven directly**

Rule: A Consumer that is a FHIR server is driven directly — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-consumer.feature

**Tests**

* **Name**: ips-consumer-950 The document is accepted over the FHIR API
  * **Operation**: gherkin/Scenario



## Resource Content

```json
{
  "resourceType" : "TestPlan",
  "resourceDefinition" : "http://hl7.org/fhir/StructureDefinition/TestPlan|0.1.0-snapshot1",
  "id" : "ips-consumer-tests",
  "url" : "http://example.com/fhir/hl7.fhir.uv.ips.test/TestPlan/ips-consumer-tests",
  "version" : "0.1.0",
  "name" : "IPSConsumerTestPlan",
  "title" : "IPS Consumer Test Plan",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-20",
  "publisher" : "Jose Costa Teixeira",
  "contact" : [{
    "name" : "Jose Costa Teixeira",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/costateixeira"
    }]
  }],
  "description" : "Test plan for the **IPS Consumer** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/).\nAn IPS Consumer actor is a system that receives an IPS document and uses the content of this document.\nEach `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim.\nThe tests declare which specification obligations they cover (240 element obligations across the plan); the coverage matrix is checked mechanically against the specification package.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "purpose" : "To declare, in a machine-readable and runnable form, which behaviours a system claiming conformance to the IPS Consumer actor must demonstrate.",
  "scope" : [{
    "reference" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer",
    "description" : "The IPS Consumer actor — a system that receives an IPS document and uses its content — is the system under test."
  }],
  "runner" : "https://www.itb.ec.europa.eu/docs/guides/latest/",
  "suite" : [{
    "name" : "The document: Bundle and Composition",
    "description" : "Rule: The document: Bundle and Composition — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-001 Bundle (IPS) — the Consumer handles 3 elements and displays 1",
      "description" : "Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier — Consumer confirms each of these is accepted for \"the document\""
      },
      {
        "severity" : "error",
        "human" : "timestamp — Consumer confirms each of these is accepted for \"the document\""
      },
      {
        "severity" : "error",
        "human" : "entry:composition — Consumer confirms each of these is accepted for \"the document\""
      },
      {
        "severity" : "error",
        "human" : "entry:composition — Consumer confirms each of these is displayed for \"the document\""
      }]
    },
    {
      "name" : "ips-consumer-002 Composition (IPS) — the Consumer handles 81 elements and displays 77",
      "description" : "Covers Composition-uv-ips: Composition.text, Composition.identifier, Composition.status, Composition.type, Composition.subject, Composition.subject.reference, Composition.date, Composition.author, Composition.title, Composition.attester, Composition.attester.mode, Composition.attester.time, Composition.attester.party, Composition.custodian, Composition.event:careProvisioningEvent, Composition.event:careProvisioningEvent.code, Composition.event:careProvisioningEvent.period, Composition.section, Composition.section.title, Composition.section.code, Composition.section.text, Composition.section:sectionProblems, Composition.section:sectionProblems.title, Composition.section:sectionProblems.text, Composition.section:sectionProblems.entry:problem, Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies, Composition.section:sectionAllergies.title, Composition.section:sectionAllergies.text, Composition.section:sectionAllergies.entry:allergyOrIntolerance, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications, Composition.section:sectionMedications.title, Composition.section:sectionMedications.text, Composition.section:sectionMedications.entry:medicationStatementOrRequest, Composition.section:sectionMedications.emptyReason, Composition.section:sectionImmunizations, Composition.section:sectionImmunizations.title, Composition.section:sectionImmunizations.text, Composition.section:sectionImmunizations.entry:immunization, Composition.section:sectionResults, Composition.section:sectionResults.title, Composition.section:sectionResults.text, Composition.section:sectionResults.entry:results-observation-laboratory-pathology, Composition.section:sectionResults.entry:results-observation-radiology, Composition.section:sectionResults.entry:results-diagnosticReport, Composition.section:sectionProceduresHx, Composition.section:sectionProceduresHx.title, Composition.section:sectionProceduresHx.text, Composition.section:sectionProceduresHx.entry:procedure, Composition.section:sectionMedicalDevices, Composition.section:sectionMedicalDevices.title, Composition.section:sectionMedicalDevices.text, Composition.section:sectionMedicalDevices.entry:deviceStatement, Composition.section:sectionAdvanceDirectives, Composition.section:sectionAdvanceDirectives.title, Composition.section:sectionAdvanceDirectives.text, Composition.section:sectionAlerts, Composition.section:sectionAlerts.title, Composition.section:sectionAlerts.text, Composition.section:sectionFunctionalStatus, Composition.section:sectionFunctionalStatus.title, Composition.section:sectionFunctionalStatus.text, Composition.section:sectionPastProblems, Composition.section:sectionPastProblems.title, Composition.section:sectionPastProblems.text, Composition.section:sectionPregnancyHx, Composition.section:sectionPregnancyHx.title, Composition.section:sectionPregnancyHx.text, Composition.section:sectionPatientStory, Composition.section:sectionPatientStory.title, Composition.section:sectionPatientStory.text, Composition.section:sectionPlanOfCare, Composition.section:sectionPlanOfCare.title, Composition.section:sectionPlanOfCare.text, Composition.section:sectionSocialHistory, Composition.section:sectionSocialHistory.title, Composition.section:sectionSocialHistory.text, Composition.section:sectionVitalSigns, Composition.section:sectionVitalSigns.title, Composition.section:sectionVitalSigns.text.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "identifier (ac7a747c-a2c9-493c-ba39-4ac6997eed1e) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "status (final) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "type (Patient summary Document) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "date (2024-09-13) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "author (Organization/7a17027f-acc0-4d77-bf84-…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "title (International Patient Summary) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.mode (professional) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.time (2024-09-13) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.party (PractitionerRole/94d12c8d-a3df-47a7-a…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "custodian (Organization/7a17027f-acc0-4d77-bf84-…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent.code (PCPR) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent.period (until 2024-09-13) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section (Problem List) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section.title (Problem List) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section.code (Problem list - Reported) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems (Problem List) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.title (Problem List) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.entry:problem (Condition/8039e4a7-d459-454c-92a5-6c1…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.emptyReason — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies (Allergies and Intolerances) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.title (Allergies and Intolerances) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.entry:allergyOrIntolerance (AllergyIntolerance/9838cf73-c30d-4aa5…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.emptyReason — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications (Medication Summary) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.title (Medication Summary) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.entry:medicationStatementOrRequest (MedicationStatement/c3d31980-2a88-45b…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.emptyReason — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations (Immunizations) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.title (Immunizations) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.entry:immunization (Immunization/17b5a6d7-307b-4726-8c8c-…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults (Results) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.title (Results) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-observation-laboratory-pathology (Observation/b0187efd-5f9b-474d-87bc-e…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-observation-radiology (Observation/b0187efd-5f9b-474d-87bc-e…) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-diagnosticReport — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx (History of Procedures) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.title (History of Procedures) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.entry:procedure (Procedure/39252) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices (Device Use) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.title (Device Use) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.entry:deviceStatement (DeviceUseStatement/eumfh-70-275-1) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives (Advance Directives) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives.title (Advance Directives) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts (Alerts) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts.title (Alerts) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus (Functional Status) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus.title (Functional Status) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems (History of Past Problems) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems.title (History of Past Problems) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx (History of Pregnancy) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx.title (History of Pregnancy) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory (Patient Story) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory.title (Patient Story) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare (Plan of Care) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare.title (Plan of Care) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory (Social History) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory.title (Social History) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns (Vital Signs) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns.title (Vital Signs) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns.text ((present)) — Consumer confirms each of these is accepted for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "status (final) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "date (2024-09-13) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "author (Organization/7a17027f-acc0-4d77-bf84-…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "title (International Patient Summary) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.mode (professional) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.time (2024-09-13) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "attester.party (PractitionerRole/94d12c8d-a3df-47a7-a…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "custodian (Organization/7a17027f-acc0-4d77-bf84-…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent.code (PCPR) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "event:careProvisioningEvent.period (until 2024-09-13) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section (Problem List) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section.title (Problem List) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems (Problem List) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.title (Problem List) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.entry:problem (Condition/8039e4a7-d459-454c-92a5-6c1…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.emptyReason — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies (Allergies and Intolerances) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.title (Allergies and Intolerances) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.entry:allergyOrIntolerance (AllergyIntolerance/9838cf73-c30d-4aa5…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.emptyReason — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications (Medication Summary) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.title (Medication Summary) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.entry:medicationStatementOrRequest (MedicationStatement/c3d31980-2a88-45b…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.emptyReason — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations (Immunizations) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.title (Immunizations) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionImmunizations.entry:immunization (Immunization/17b5a6d7-307b-4726-8c8c-…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults (Results) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.title (Results) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-observation-laboratory-pathology (Observation/b0187efd-5f9b-474d-87bc-e…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-observation-radiology (Observation/b0187efd-5f9b-474d-87bc-e…) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionResults.entry:results-diagnosticReport — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx (History of Procedures) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.title (History of Procedures) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionProceduresHx.entry:procedure (Procedure/39252) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices (Device Use) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.title (Device Use) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedicalDevices.entry:deviceStatement (DeviceUseStatement/eumfh-70-275-1) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives (Advance Directives) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives.title (Advance Directives) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAdvanceDirectives.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts (Alerts) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts.title (Alerts) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAlerts.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus (Functional Status) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus.title (Functional Status) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionFunctionalStatus.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems (History of Past Problems) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems.title (History of Past Problems) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPastProblems.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx (History of Pregnancy) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx.title (History of Pregnancy) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPregnancyHx.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory (Patient Story) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory.title (Patient Story) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPatientStory.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare (Plan of Care) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare.title (Plan of Care) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionPlanOfCare.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory (Social History) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory.title (Social History) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionSocialHistory.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns (Vital Signs) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns.title (Vital Signs) — Consumer confirms each of these is displayed for \"the Composition resources\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionVitalSigns.text ((present)) — Consumer confirms each of these is displayed for \"the Composition resources\""
      }]
    }]
  },
  {
    "name" : "The people and organisations",
    "description" : "Rule: The people and organisations — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-003 Patient (IPS) — the Consumer handles 11 elements and displays 11",
      "description" : "Covers Patient-uv-ips: Patient.identifier, Patient.name, Patient.name.use, Patient.name.text, Patient.name.family, Patient.name.given, Patient.telecom, Patient.gender, Patient.birthDate, Patient.address, Patient.generalPractitioner.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier (ABC1234) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name (Patricia JORDANA) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.use (usual) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.text — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.family (JORDANA) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.given (Patricia) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom (+1234567890) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "gender (female) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "birthDate (1956-09-30) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "address ((present)) — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "generalPractitioner — Consumer confirms each of these is accepted for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "identifier (ABC1234) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name (Patricia JORDANA) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.use (usual) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.text — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.family (JORDANA) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "name.given (Patricia) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom (+1234567890) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "gender (female) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "birthDate (1956-09-30) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "address ((present)) — Consumer confirms each of these is displayed for \"the Patient resources\""
      },
      {
        "severity" : "error",
        "human" : "generalPractitioner — Consumer confirms each of these is displayed for \"the Patient resources\""
      }]
    },
    {
      "name" : "ips-consumer-004 Practitioner (IPS) — the Consumer handles 5 elements and displays 5",
      "description" : "Covers Practitioner-uv-ips: Practitioner.name, Practitioner.name.family, Practitioner.name.given, Practitioner.telecom, Practitioner.address.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "name (HASHIRA COORAY COORAY) — Consumer confirms each of these is accepted for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "name.family (COORAY) — Consumer confirms each of these is accepted for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "name.given (HASHIRA) — Consumer confirms each of these is accepted for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom (07 850 9900) — Consumer confirms each of these is accepted for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "address — Consumer confirms each of these is accepted for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "name (HASHIRA COORAY COORAY) — Consumer confirms each of these is displayed for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "name.family (COORAY) — Consumer confirms each of these is displayed for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "name.given (HASHIRA) — Consumer confirms each of these is displayed for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom (07 850 9900) — Consumer confirms each of these is displayed for \"the Practitioner resources\""
      },
      {
        "severity" : "error",
        "human" : "address — Consumer confirms each of these is displayed for \"the Practitioner resources\""
      }]
    },
    {
      "name" : "ips-consumer-005 PractitionerRole (IPS) — the Consumer handles 1 element and displays 1",
      "description" : "Covers PractitionerRole-uv-ips: PractitionerRole.organization.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "organization — Consumer confirms each of these is accepted for \"the PractitionerRole resources\""
      },
      {
        "severity" : "error",
        "human" : "organization — Consumer confirms each of these is displayed for \"the PractitionerRole resources\""
      }]
    },
    {
      "name" : "ips-consumer-006 Organization (IPS) — the Consumer handles 3 elements and displays 3",
      "description" : "Covers Organization-uv-ips: Organization.name, Organization.telecom, Organization.address.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "name (NorthCare Pukete Road-Thomas Road) — Consumer confirms each of these is accepted for \"the Organization resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom — Consumer confirms each of these is accepted for \"the Organization resources\""
      },
      {
        "severity" : "error",
        "human" : "address — Consumer confirms each of these is accepted for \"the Organization resources\""
      },
      {
        "severity" : "error",
        "human" : "name (NorthCare Pukete Road-Thomas Road) — Consumer confirms each of these is displayed for \"the Organization resources\""
      },
      {
        "severity" : "error",
        "human" : "telecom — Consumer confirms each of these is displayed for \"the Organization resources\""
      },
      {
        "severity" : "error",
        "human" : "address — Consumer confirms each of these is displayed for \"the Organization resources\""
      }]
    }]
  },
  {
    "name" : "The required sections: problems, allergies, medications",
    "description" : "Rule: The required sections: problems, allergies, medications — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-007 AllergyIntolerance (IPS) — the Consumer handles 10 elements and displays 9",
      "description" : "Covers AllergyIntolerance-uv-ips: AllergyIntolerance.clinicalStatus, AllergyIntolerance.type, AllergyIntolerance.code, AllergyIntolerance.patient, AllergyIntolerance.patient.reference, AllergyIntolerance.onset[x], AllergyIntolerance.onset[x]:onsetDateTime, AllergyIntolerance.reaction, AllergyIntolerance.reaction.manifestation, AllergyIntolerance.reaction.severity.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "clinicalStatus (active) — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "type — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Penicillin) — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "patient (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "patient.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x] — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x]:onsetDateTime — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction.manifestation — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction.severity — Consumer confirms each of these is accepted for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "clinicalStatus (active) — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "type — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Penicillin) — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "patient (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x] — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x]:onsetDateTime — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction.manifestation — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      },
      {
        "severity" : "error",
        "human" : "reaction.severity — Consumer confirms each of these is displayed for \"the AllergyIntolerance resources\""
      }]
    },
    {
      "name" : "ips-consumer-008 Condition (IPS) — the Consumer handles 8 elements and displays 7",
      "description" : "Covers Condition-uv-ips: Condition.clinicalStatus, Condition.category, Condition.severity, Condition.code, Condition.subject, Condition.subject.reference, Condition.onset[x], Condition.onset[x]:onsetDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "clinicalStatus (active) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "category — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "severity — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Essential hypertension) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x] (2016-05-25) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x]:onsetDateTime (2016-05-25) — Consumer confirms each of these is accepted for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "clinicalStatus (active) — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "category — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "severity — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Essential hypertension) — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x] (2016-05-25) — Consumer confirms each of these is displayed for \"the Condition resources\""
      },
      {
        "severity" : "error",
        "human" : "onset[x]:onsetDateTime (2016-05-25) — Consumer confirms each of these is displayed for \"the Condition resources\""
      }]
    },
    {
      "name" : "ips-consumer-009 Medication (IPS) — the Consumer handles 5 elements and displays 5",
      "description" : "Covers Medication-uv-ips: Medication.code, Medication.form, Medication.ingredient, Medication.ingredient.item[x], Medication.ingredient.strength.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "form — Consumer confirms each of these is accepted for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient — Consumer confirms each of these is accepted for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.item[x] — Consumer confirms each of these is accepted for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.strength — Consumer confirms each of these is accepted for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is displayed for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "form — Consumer confirms each of these is displayed for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient — Consumer confirms each of these is displayed for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.item[x] — Consumer confirms each of these is displayed for \"the Medication resources\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.strength — Consumer confirms each of these is displayed for \"the Medication resources\""
      }]
    },
    {
      "name" : "ips-consumer-010 MedicationRequest (IPS) — the Consumer handles 6 elements and displays 5",
      "description" : "Covers MedicationRequest-uv-ips: MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.subject.reference, MedicationRequest.dosageInstruction, MedicationRequest.dosageInstruction.text, MedicationRequest.dosageInstruction.timing.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "medication[x] — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.text — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.timing — Consumer confirms each of these is accepted for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "medication[x] — Consumer confirms each of these is displayed for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction — Consumer confirms each of these is displayed for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.text — Consumer confirms each of these is displayed for \"the MedicationRequest resources\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.timing — Consumer confirms each of these is displayed for \"the MedicationRequest resources\""
      }]
    },
    {
      "name" : "ips-consumer-011 MedicationStatement (IPS) — the Consumer handles 8 elements and displays 7",
      "description" : "Covers MedicationStatement-uv-ips: MedicationStatement.medication[x], MedicationStatement.subject, MedicationStatement.subject.reference, MedicationStatement.effective[x], MedicationStatement.effective[x]:effectiveDateTime, MedicationStatement.dosage, MedicationStatement.dosage.text, MedicationStatement.dosage.timing.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "medication[x] (cilazapril 500 microgram tablet, 90) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2023-12-01) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (2023-12-01) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage (Take 1 daily) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage.text (Take 1 daily) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage.timing ((present)) — Consumer confirms each of these is accepted for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "medication[x] (cilazapril 500 microgram tablet, 90) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2023-12-01) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (2023-12-01) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage (Take 1 daily) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage.text (Take 1 daily) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "dosage.timing ((present)) — Consumer confirms each of these is displayed for \"the MedicationStatement resources\""
      }]
    }]
  },
  {
    "name" : "The recommended sections: immunizations, results, procedures, devices",
    "description" : "Rule: The recommended sections: immunizations, results, procedures, devices — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-012 Immunization (IPS) — the Consumer handles 6 elements and displays 5",
      "description" : "Covers Immunization-uv-ips: Immunization.status, Immunization.vaccineCode, Immunization.patient, Immunization.patient.reference, Immunization.occurrence[x], Immunization.occurrence[x]:occurrenceDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "status (completed) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "vaccineCode (Influenza, split virus, trivalent, pr…) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "patient (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "patient.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "occurrence[x] (2024-04-10) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "occurrence[x]:occurrenceDateTime (2024-04-10) — Consumer confirms each of these is accepted for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "status (completed) — Consumer confirms each of these is displayed for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "vaccineCode (Influenza, split virus, trivalent, pr…) — Consumer confirms each of these is displayed for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "patient (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "occurrence[x] (2024-04-10) — Consumer confirms each of these is displayed for \"the Immunization resources\""
      },
      {
        "severity" : "error",
        "human" : "occurrence[x]:occurrenceDateTime (2024-04-10) — Consumer confirms each of these is displayed for \"the Immunization resources\""
      }]
    },
    {
      "name" : "ips-consumer-013 Observation Results - Laboratory/Pathology (IPS) — the Consumer handles 11 elements and displays 10",
      "description" : "Covers Observation-results-laboratory-pathology-uv-ips: Observation.category:laboratory, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.value[x]:valueQuantity, Observation.value[x]:valueCodeableConcept, Observation.component.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "category:laboratory (laboratory) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code (Cholesterol.total/Cholesterol in HDL …) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2023-10-31T15:06:00+00:00) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (2023-10-31T15:06:00+00:00) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "performer (PractitionerRole/75ed6f24-9a7e-4568-9…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueString (A combined CVD risk of which lipids i…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueQuantity (mmol/L) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueCodeableConcept — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "component — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "category:laboratory (laboratory) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code (Cholesterol.total/Cholesterol in HDL …) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2023-10-31T15:06:00+00:00) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (2023-10-31T15:06:00+00:00) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "performer (PractitionerRole/75ed6f24-9a7e-4568-9…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueString (A combined CVD risk of which lipids i…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueQuantity (mmol/L) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueCodeableConcept — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "component — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-014 Observation Results - Radiology (IPS) — the Consumer handles 9 elements and displays 8",
      "description" : "Covers Observation-results-radiology-uv-ips: Observation.category:radiology, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.component.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "category:radiology — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "performer — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueString — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "component — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "category:radiology — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "performer — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueString — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "component — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-015 DiagnosticReport (IPS) — the Consumer handles 7 elements and displays 6",
      "description" : "Covers DiagnosticReport-uv-ips: DiagnosticReport.code, DiagnosticReport.subject, DiagnosticReport.subject.reference, DiagnosticReport.effective[x], DiagnosticReport.effective[x]:effectiveDateTime, DiagnosticReport.performer, DiagnosticReport.result:observation-results.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "performer — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "result:observation-results — Consumer confirms each of these is accepted for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "performer — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      },
      {
        "severity" : "error",
        "human" : "result:observation-results — Consumer confirms each of these is displayed for \"the DiagnosticReport resources\""
      }]
    },
    {
      "name" : "ips-consumer-016 Specimen (IPS) — the Consumer handles 3 elements and displays 2",
      "description" : "Covers Specimen-uv-ips: Specimen.type, Specimen.subject, Specimen.subject.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "type — Consumer confirms each of these is accepted for \"the Specimen resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the Specimen resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the Specimen resources\""
      },
      {
        "severity" : "error",
        "human" : "type — Consumer confirms each of these is displayed for \"the Specimen resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the Specimen resources\""
      }]
    },
    {
      "name" : "ips-consumer-017 ImagingStudy (IPS) — the Consumer handles 12 elements and displays 11",
      "description" : "Covers ImagingStudy-uv-ips: ImagingStudy.identifier, ImagingStudy.subject, ImagingStudy.subject.reference, ImagingStudy.started, ImagingStudy.procedureCode, ImagingStudy.reasonCode, ImagingStudy.series, ImagingStudy.series.uid, ImagingStudy.series.modality, ImagingStudy.series.instance, ImagingStudy.series.instance.uid, ImagingStudy.series.instance.sopClass.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "started — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "procedureCode — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "reasonCode — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.uid — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.modality — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.uid — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.sopClass — Consumer confirms each of these is accepted for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "identifier — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "started — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "procedureCode — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "reasonCode — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.uid — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.modality — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.uid — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.sopClass — Consumer confirms each of these is displayed for \"the ImagingStudy resources\""
      }]
    },
    {
      "name" : "ips-consumer-018 Procedure (IPS) — the Consumer handles 5 elements and displays 4",
      "description" : "Covers Procedure-uv-ips: Procedure.code, Procedure.subject, Procedure.subject.reference, Procedure.performed[x], Procedure.performed[x]:performedDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (Total hip replacement) — Consumer confirms each of these is accepted for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "performed[x] (2000-04-28) — Consumer confirms each of these is accepted for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "performed[x]:performedDateTime (2000-04-28) — Consumer confirms each of these is accepted for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Total hip replacement) — Consumer confirms each of these is displayed for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "performed[x] (2000-04-28) — Consumer confirms each of these is displayed for \"the Procedure resources\""
      },
      {
        "severity" : "error",
        "human" : "performed[x]:performedDateTime (2000-04-28) — Consumer confirms each of these is displayed for \"the Procedure resources\""
      }]
    },
    {
      "name" : "ips-consumer-019 Device - Performer or Observer (IPS) — the Consumer handles 3 elements and displays 3",
      "description" : "Covers Device-observer-uv-ips: Device.identifier, Device.manufacturer, Device.modelNumber.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier — Consumer confirms each of these is accepted for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "manufacturer — Consumer confirms each of these is accepted for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "modelNumber — Consumer confirms each of these is accepted for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "identifier — Consumer confirms each of these is displayed for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "manufacturer — Consumer confirms each of these is displayed for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "modelNumber — Consumer confirms each of these is displayed for \"the Device resources\""
      }]
    },
    {
      "name" : "ips-consumer-020 Device (IPS) — the Consumer handles 1 element and displays 1",
      "description" : "Covers Device-uv-ips: Device.type.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "type (Hip prosthesis, device (physical object)) — Consumer confirms each of these is accepted for \"the Device resources\""
      },
      {
        "severity" : "error",
        "human" : "type (Hip prosthesis, device (physical object)) — Consumer confirms each of these is displayed for \"the Device resources\""
      }]
    },
    {
      "name" : "ips-consumer-021 DeviceUseStatement (IPS) — the Consumer handles 5 elements and displays 4",
      "description" : "Covers DeviceUseStatement-uv-ips: DeviceUseStatement.subject, DeviceUseStatement.subject.reference, DeviceUseStatement.timing[x], DeviceUseStatement.timing[x]:timingDateTime, DeviceUseStatement.device.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "timing[x] — Consumer confirms each of these is accepted for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "timing[x]:timingDateTime — Consumer confirms each of these is accepted for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "device (Hip prosthesis) — Consumer confirms each of these is accepted for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "timing[x] — Consumer confirms each of these is displayed for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "timing[x]:timingDateTime — Consumer confirms each of these is displayed for \"the DeviceUseStatement resources\""
      },
      {
        "severity" : "error",
        "human" : "device (Hip prosthesis) — Consumer confirms each of these is displayed for \"the DeviceUseStatement resources\""
      }]
    }]
  },
  {
    "name" : "The optional sections: alerts, pregnancy, social history",
    "description" : "Rule: The optional sections: alerts, pregnancy, social history — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-022 Flag - Alert (IPS) — the Consumer handles 5 elements and displays 4",
      "description" : "Covers Flag-alert-uv-ips: Flag.extension:flag-priority, Flag.category, Flag.code, Flag.subject, Flag.subject.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "extension:flag-priority — Consumer confirms each of these is accepted for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "category (Diet) — Consumer confirms each of these is accepted for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Shellfish free diet) — Consumer confirms each of these is accepted for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "extension:flag-priority — Consumer confirms each of these is displayed for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "category (Diet) — Consumer confirms each of these is displayed for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "code (Shellfish free diet) — Consumer confirms each of these is displayed for \"the Flag resources\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Flag resources\""
      }]
    },
    {
      "name" : "ips-consumer-023 Observation Pregnancy - Expected Delivery Date (IPS) — the Consumer handles 5 elements and displays 4",
      "description" : "Covers Observation-pregnancy-edd-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueDateTime — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueDateTime — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-024 Observation Pregnancy - Outcome (IPS) — the Consumer handles 5 elements and displays 4",
      "description" : "Covers Observation-pregnancy-outcome-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueQuantity.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueQuantity — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueQuantity — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-025 Observation Pregnancy - Status (IPS) — the Consumer handles 7 elements and displays 6",
      "description" : "Covers Observation-pregnancy-status-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueCodeableConcept, Observation.hasMember, Observation.hasMember.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (Pregnancy status) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2020-01-10) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueCodeableConcept (Not Pregnant) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "hasMember — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "hasMember.reference — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code (Pregnancy status) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2020-01-10) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueCodeableConcept (Not Pregnant) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "hasMember — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "hasMember.reference — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    }]
  },
  {
    "name" : "Data types used throughout",
    "description" : "Rule: Data types used throughout — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-026 Observation Social History - Tobacco Use (IPS) — the Consumer handles 4 elements and displays 3",
      "description" : "Covers Observation-tobaccouse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (Tobacco smoking status) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2022-10-20) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code (Tobacco smoking status) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2022-10-20) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-027 Observation Social History - Alcohol Use (IPS) — the Consumer handles 4 elements and displays 3",
      "description" : "Covers Observation-alcoholuse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (Alcoholic drinks per day) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2016-06-22) — Consumer confirms each of these is accepted for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "code (Alcoholic drinks per day) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "subject (Patient/d174bd1a-b368-41e6-83a2-af77f…) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (2016-06-22) — Consumer confirms each of these is displayed for \"the Observation resources of this kind\""
      }]
    },
    {
      "name" : "ips-consumer-028 Codeable Concept (IPS) — the Consumer handles 2 elements and displays 1",
      "description" : "Covers CodeableConcept-uv-ips: CodeableConcept.coding, CodeableConcept.text.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "coding — Consumer confirms each of these is accepted for \"every CodeableConcept in the document\""
      },
      {
        "severity" : "error",
        "human" : "text — Consumer confirms each of these is accepted for \"every CodeableConcept in the document\""
      },
      {
        "severity" : "error",
        "human" : "text — Consumer confirms each of these is displayed for \"every CodeableConcept in the document\""
      }]
    },
    {
      "name" : "ips-consumer-029 Coding with translations — the Consumer handles 2 elements",
      "description" : "Covers Coding-uv-ips: Coding.system, Coding.code.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "system — Consumer confirms each of these is accepted for \"every Coding in the document\""
      },
      {
        "severity" : "error",
        "human" : "code — Consumer confirms each of these is accepted for \"every Coding in the document\""
      }]
    }]
  },
  {
    "name" : "Documents with missing information are handled, not rejected",
    "description" : "Rule: Documents with missing information are handled, not rejected — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-900 Required sections with an emptyReason and a minimal document are accepted",
      "description" : "Covers Composition-uv-ips: Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications.emptyReason.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "section:sectionProblems.emptyReason (shown as no information) — Consumer confirms each of these is accepted for \"a document whose required sections carry an emptyReason\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.emptyReason (shown as no information) — Consumer confirms each of these is accepted for \"a document whose required sections carry an emptyReason\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.emptyReason (shown as no information) — Consumer confirms each of these is accepted for \"a document whose required sections carry an emptyReason\""
      },
      {
        "severity" : "error",
        "human" : "the document (imported without error) — Consumer confirms each of these is accepted for \"the minimal document\""
      }]
    }]
  },
  {
    "name" : "A Consumer that is a FHIR server is driven directly",
    "description" : "Rule: A Consumer that is a FHIR server is driven directly — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-consumer.feature"
    }],
    "test" : [{
      "name" : "ips-consumer-950 The document is accepted over the FHIR API",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be one of \"200, 201\""
      }]
    }]
  }]
}

```

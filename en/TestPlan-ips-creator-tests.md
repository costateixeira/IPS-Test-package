# IPS Creator Test Plan - IPS: TestPlans and Gherkin for the IPS actors v0.1.0

## TestPlan: IPS Creator Test Plan (Experimental) 

 
Test plan for the **IPS Creator** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/). An IPS Creator actor is a system which produces/assembles/creates an IPS document. The reference patient is the IG's own all-sections example, Patricia JORDANA (identifier ABC1234): every element with a Creator obligation that the example carries must appear in the document the system produces for her. Each `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim. The tests declare which specification obligations they cover (229 element obligations across the plan); the coverage matrix is checked mechanically against the specification package. 

**Scopes**

* **Reference**: [Creator (IPS)](http://hl7.org/fhir/uv/ips/2.0.1/ActorDefinition-Creator.html)
  * **Description**: The IPS Creator actor — a system which produces, assembles or creates an IPS document — is the system under test.

**1 Suite: The document as a whole conforms**

Rule: The document as a whole conforms — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-000 The exported document is a valid IPS Bundle
  * **Operation**: gherkin/Scenario

-------

**2 Suite: The document: Bundle and Composition**

Rule: The document: Bundle and Composition — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-001 Bundle (IPS) — the Creator populates identifier, timestamp, entry:composition
  * **Description**: Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-002 Composition (IPS) — the Creator populates status, type, subject, subject.reference and more; 23 elements when known
  * **Description**: Covers Composition-uv-ips: Composition.meta.profile, Composition.text, Composition.identifier, Composition.status, Composition.type, Composition.subject, Composition.subject.reference, Composition.date, Composition.author, Composition.title, Composition.attester, Composition.attester.mode, Composition.attester.time, Composition.attester.party, Composition.custodian, Composition.event:careProvisioningEvent, Composition.event:careProvisioningEvent.code, Composition.event:careProvisioningEvent.period, Composition.section.title, Composition.section.text, Composition.section:sectionProblems, Composition.section:sectionProblems.title, Composition.section:sectionProblems.text, Composition.section:sectionProblems.entry:problem, Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies, Composition.section:sectionAllergies.title, Composition.section:sectionAllergies.text, Composition.section:sectionAllergies.entry:allergyOrIntolerance, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications, Composition.section:sectionMedications.title, Composition.section:sectionMedications.text, Composition.section:sectionMedications.entry:medicationStatementOrRequest, Composition.section:sectionMedications.emptyReason, Composition.section:sectionImmunizations, Composition.section:sectionImmunizations.title, Composition.section:sectionImmunizations.text, Composition.section:sectionImmunizations.entry:immunization, Composition.section:sectionResults, Composition.section:sectionResults.title, Composition.section:sectionResults.text, Composition.section:sectionResults.entry:results-observation-laboratory-pathology, Composition.section:sectionResults.entry:results-observation-radiology, Composition.section:sectionProceduresHx, Composition.section:sectionProceduresHx.title, Composition.section:sectionProceduresHx.text, Composition.section:sectionProceduresHx.entry:procedure, Composition.section:sectionMedicalDevices, Composition.section:sectionMedicalDevices.title, Composition.section:sectionMedicalDevices.text, Composition.section:sectionMedicalDevices.entry:deviceStatement, Composition.section:sectionAdvanceDirectives.title, Composition.section:sectionAdvanceDirectives.text, Composition.section:sectionAlerts.title, Composition.section:sectionAlerts.text, Composition.section:sectionFunctionalStatus.title, Composition.section:sectionFunctionalStatus.text, Composition.section:sectionPastProblems.title, Composition.section:sectionPastProblems.text, Composition.section:sectionPregnancyHx.title, Composition.section:sectionPregnancyHx.text, Composition.section:sectionPatientStory.title, Composition.section:sectionPatientStory.text, Composition.section:sectionPlanOfCare.title, Composition.section:sectionPlanOfCare.text, Composition.section:sectionSocialHistory.title, Composition.section:sectionSocialHistory.text, Composition.section:sectionVitalSigns.title, Composition.section:sectionVitalSigns.text.
  * **Operation**: gherkin/Scenario

-------

**3 Suite: The people and organisations**

Rule: The people and organisations — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-003 Patient (IPS) — the Creator populates name; 10 elements when known
  * **Description**: Covers Patient-uv-ips: Patient.identifier, Patient.name, Patient.name.use, Patient.name.text, Patient.name.family, Patient.name.given, Patient.telecom, Patient.gender, Patient.birthDate, Patient.address, Patient.generalPractitioner.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-004 Practitioner (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Practitioner-uv-ips: Practitioner.name, Practitioner.name.family, Practitioner.name.given, Practitioner.telecom, Practitioner.address.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-005 PractitionerRole (IPS) — the Creator populates 1 element when known
  * **Description**: Covers PractitionerRole-uv-ips: PractitionerRole.organization.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-006 Organization (IPS) — the Creator populates 3 elements when known
  * **Description**: Covers Organization-uv-ips: Organization.name, Organization.telecom, Organization.address.
  * **Operation**: gherkin/Scenario

-------

**4 Suite: The required sections: problems, allergies, medications**

Rule: The required sections: problems, allergies, medications — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-007 AllergyIntolerance (IPS) — the Creator populates 9 elements when known
  * **Description**: Covers AllergyIntolerance-uv-ips: AllergyIntolerance.clinicalStatus, AllergyIntolerance.type, AllergyIntolerance.code, AllergyIntolerance.patient, AllergyIntolerance.patient.reference, AllergyIntolerance.onset[x], AllergyIntolerance.onset[x]:onsetDateTime, AllergyIntolerance.reaction, AllergyIntolerance.reaction.manifestation, AllergyIntolerance.reaction.severity.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-008 Condition (IPS) — the Creator populates 7 elements when known
  * **Description**: Covers Condition-uv-ips: Condition.clinicalStatus, Condition.category, Condition.severity, Condition.code, Condition.subject, Condition.subject.reference, Condition.onset[x], Condition.onset[x]:onsetDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-009 Medication (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Medication-uv-ips: Medication.code, Medication.form, Medication.ingredient, Medication.ingredient.item[x], Medication.ingredient.strength.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-010 MedicationRequest (IPS) — the Creator populates 6 elements when known
  * **Description**: Covers MedicationRequest-uv-ips: MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.subject.reference, MedicationRequest.dosageInstruction, MedicationRequest.dosageInstruction.text, MedicationRequest.dosageInstruction.timing.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-011 MedicationStatement (IPS) — the Creator populates 7 elements when known
  * **Description**: Covers MedicationStatement-uv-ips: MedicationStatement.medication[x], MedicationStatement.subject, MedicationStatement.subject.reference, MedicationStatement.effective[x], MedicationStatement.effective[x]:effectiveDateTime, MedicationStatement.dosage, MedicationStatement.dosage.text, MedicationStatement.dosage.timing.
  * **Operation**: gherkin/Scenario

-------

**5 Suite: The recommended sections: immunizations, results, procedures, devices**

Rule: The recommended sections: immunizations, results, procedures, devices — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-012 Immunization (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Immunization-uv-ips: Immunization.status, Immunization.vaccineCode, Immunization.patient, Immunization.patient.reference, Immunization.occurrence[x], Immunization.occurrence[x]:occurrenceDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-013 Observation Results - Laboratory/Pathology (IPS) — the Creator populates 10 elements when known
  * **Description**: Covers Observation-results-laboratory-pathology-uv-ips: Observation.category:laboratory, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.value[x]:valueQuantity, Observation.value[x]:valueCodeableConcept, Observation.component.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-014 Observation Results - Radiology (IPS) — the Creator populates 8 elements when known
  * **Description**: Covers Observation-results-radiology-uv-ips: Observation.category:radiology, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.component.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-015 DiagnosticReport (IPS) — the Creator populates 6 elements when known
  * **Description**: Covers DiagnosticReport-uv-ips: DiagnosticReport.code, DiagnosticReport.subject, DiagnosticReport.subject.reference, DiagnosticReport.effective[x], DiagnosticReport.effective[x]:effectiveDateTime, DiagnosticReport.performer, DiagnosticReport.result:observation-results.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-016 Specimen (IPS) — the Creator populates 3 elements when known
  * **Description**: Covers Specimen-uv-ips: Specimen.type, Specimen.subject, Specimen.subject.reference.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-017 ImagingStudy (IPS) — the Creator populates 12 elements when known
  * **Description**: Covers ImagingStudy-uv-ips: ImagingStudy.identifier, ImagingStudy.subject, ImagingStudy.subject.reference, ImagingStudy.started, ImagingStudy.procedureCode, ImagingStudy.reasonCode, ImagingStudy.series, ImagingStudy.series.uid, ImagingStudy.series.modality, ImagingStudy.series.instance, ImagingStudy.series.instance.uid, ImagingStudy.series.instance.sopClass.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-018 Procedure (IPS) — the Creator populates 4 elements when known
  * **Description**: Covers Procedure-uv-ips: Procedure.code, Procedure.subject, Procedure.subject.reference, Procedure.performed[x], Procedure.performed[x]:performedDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-019 Device - Performer or Observer (IPS) — the Creator populates 3 elements when known
  * **Description**: Covers Device-observer-uv-ips: Device.identifier, Device.manufacturer, Device.modelNumber.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-020 Device (IPS) — the Creator populates 1 element when known
  * **Description**: Covers Device-uv-ips: Device.type.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-021 DeviceUseStatement (IPS) — the Creator populates 4 elements when known
  * **Description**: Covers DeviceUseStatement-uv-ips: DeviceUseStatement.subject, DeviceUseStatement.subject.reference, DeviceUseStatement.timing[x], DeviceUseStatement.timing[x]:timingDateTime, DeviceUseStatement.device.
  * **Operation**: gherkin/Scenario

-------

**6 Suite: The optional sections: alerts, pregnancy, social history**

Rule: The optional sections: alerts, pregnancy, social history — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-022 Flag - Alert (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Flag-alert-uv-ips: Flag.extension:flag-priority, Flag.category, Flag.code, Flag.subject, Flag.subject.reference.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-023 Observation Pregnancy - Expected Delivery Date (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Observation-pregnancy-edd-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueDateTime.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-024 Observation Pregnancy - Outcome (IPS) — the Creator populates 5 elements when known
  * **Description**: Covers Observation-pregnancy-outcome-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueQuantity.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-025 Observation Pregnancy - Status (IPS) — the Creator populates 7 elements when known
  * **Description**: Covers Observation-pregnancy-status-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueCodeableConcept, Observation.hasMember, Observation.hasMember.reference.
  * **Operation**: gherkin/Scenario

-------

**7 Suite: Data types used throughout**

Rule: Data types used throughout — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-026 Observation Social History - Tobacco Use (IPS) — the Creator populates 4 elements when known
  * **Description**: Covers Observation-tobaccouse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-027 Observation Social History - Alcohol Use (IPS) — the Creator populates 4 elements when known
  * **Description**: Covers Observation-alcoholuse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-028 Codeable Concept (IPS) — the Creator populates 2 elements when known
  * **Description**: Covers CodeableConcept-uv-ips: CodeableConcept.coding, CodeableConcept.text.
  * **Operation**: gherkin/Scenario
* **Name**: ips-creator-029 Coding with translations — the Creator populates 2 elements when known
  * **Description**: Covers Coding-uv-ips: Coding.system, Coding.code.
  * **Operation**: gherkin/Scenario

-------

**8 Suite: A patient with no known problems, allergies or medications still gets the required sections**

Rule: A patient with no known problems, allergies or medications still gets the required sections — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-creator.feature

**Tests**

* **Name**: ips-creator-900 Required sections carry an explicit no-information statement
  * **Description**: Covers Composition-uv-ips: Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications.emptyReason.
  * **Operation**: gherkin/Scenario



## Resource Content

```json
{
  "resourceType" : "TestPlan",
  "resourceDefinition" : "http://hl7.org/fhir/StructureDefinition/TestPlan|0.1.0-snapshot1",
  "id" : "ips-creator-tests",
  "url" : "http://example.com/fhir/hl7.fhir.uv.ips.test/TestPlan/ips-creator-tests",
  "version" : "0.1.0",
  "name" : "IPSCreatorTestPlan",
  "title" : "IPS Creator Test Plan",
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
  "description" : "Test plan for the **IPS Creator** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/).\nAn IPS Creator actor is a system which produces/assembles/creates an IPS document.\nThe reference patient is the IG's own all-sections example, Patricia JORDANA\n(identifier ABC1234): every element with a Creator obligation that the\nexample carries must appear in the document the system produces for her.\nEach `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim.\nThe tests declare which specification obligations they cover (229 element obligations across the plan); the coverage matrix is checked mechanically against the specification package.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "purpose" : "To declare, in a machine-readable and runnable form, which behaviours a system claiming conformance to the IPS Creator actor must demonstrate.",
  "scope" : [{
    "reference" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator",
    "description" : "The IPS Creator actor — a system which produces, assembles or creates an IPS document — is the system under test."
  }],
  "runner" : "https://www.itb.ec.europa.eu/docs/guides/latest/",
  "suite" : [{
    "name" : "The document as a whole conforms",
    "description" : "Rule: The document as a whole conforms — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-000 The exported document is a valid IPS Bundle",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$ips should conform to \"http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips\" ignoring slicing errors"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.type\" should be \"document\""
      }]
    }]
  },
  {
    "name" : "The document: Bundle and Composition",
    "description" : "Rule: The document: Bundle and Composition — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-001 Bundle (IPS) — the Creator populates identifier, timestamp, entry:composition",
      "description" : "Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Bundle.identifier (SHALL:populate): $ips at \"Bundle.identifier.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Bundle.timestamp (SHALL:populate): $ips at \"Bundle.timestamp.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Bundle.entry:composition (SHALL:populate): $ips at \"Bundle.entry.where(resource.ofType(Composition).exists()).exists()\" should be true"
      }]
    },
    {
      "name" : "ips-creator-002 Composition (IPS) — the Creator populates status, type, subject, subject.reference and more; 23 elements when known",
      "description" : "Covers Composition-uv-ips: Composition.meta.profile, Composition.text, Composition.identifier, Composition.status, Composition.type, Composition.subject, Composition.subject.reference, Composition.date, Composition.author, Composition.title, Composition.attester, Composition.attester.mode, Composition.attester.time, Composition.attester.party, Composition.custodian, Composition.event:careProvisioningEvent, Composition.event:careProvisioningEvent.code, Composition.event:careProvisioningEvent.period, Composition.section.title, Composition.section.text, Composition.section:sectionProblems, Composition.section:sectionProblems.title, Composition.section:sectionProblems.text, Composition.section:sectionProblems.entry:problem, Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies, Composition.section:sectionAllergies.title, Composition.section:sectionAllergies.text, Composition.section:sectionAllergies.entry:allergyOrIntolerance, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications, Composition.section:sectionMedications.title, Composition.section:sectionMedications.text, Composition.section:sectionMedications.entry:medicationStatementOrRequest, Composition.section:sectionMedications.emptyReason, Composition.section:sectionImmunizations, Composition.section:sectionImmunizations.title, Composition.section:sectionImmunizations.text, Composition.section:sectionImmunizations.entry:immunization, Composition.section:sectionResults, Composition.section:sectionResults.title, Composition.section:sectionResults.text, Composition.section:sectionResults.entry:results-observation-laboratory-pathology, Composition.section:sectionResults.entry:results-observation-radiology, Composition.section:sectionProceduresHx, Composition.section:sectionProceduresHx.title, Composition.section:sectionProceduresHx.text, Composition.section:sectionProceduresHx.entry:procedure, Composition.section:sectionMedicalDevices, Composition.section:sectionMedicalDevices.title, Composition.section:sectionMedicalDevices.text, Composition.section:sectionMedicalDevices.entry:deviceStatement, Composition.section:sectionAdvanceDirectives.title, Composition.section:sectionAdvanceDirectives.text, Composition.section:sectionAlerts.title, Composition.section:sectionAlerts.text, Composition.section:sectionFunctionalStatus.title, Composition.section:sectionFunctionalStatus.text, Composition.section:sectionPastProblems.title, Composition.section:sectionPastProblems.text, Composition.section:sectionPregnancyHx.title, Composition.section:sectionPregnancyHx.text, Composition.section:sectionPatientStory.title, Composition.section:sectionPatientStory.text, Composition.section:sectionPlanOfCare.title, Composition.section:sectionPlanOfCare.text, Composition.section:sectionSocialHistory.title, Composition.section:sectionSocialHistory.text, Composition.section:sectionVitalSigns.title, Composition.section:sectionVitalSigns.text.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Composition) Composition.text (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.identifier (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(identifier.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.status (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(status.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.type (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(type.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.subject (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.subject.reference (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.date (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(date.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.author (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(author.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.attester (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(attester.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.attester.mode (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).attester.all(mode.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.attester.time (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).attester.all(time.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.attester.party (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).attester.all(party.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.custodian (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(custodian.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.event:careProvisioningEvent (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(event.where(code.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ActClass' and code='PCPR').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.event:careProvisioningEvent.code (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).event.where(code.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ActClass' and code='PCPR').exists()).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.event:careProvisioningEvent.period (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).event.where(code.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ActClass' and code='PCPR').exists()).all(period.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProblems (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='11450-4').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProblems.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11450-4').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProblems.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11450-4').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProblems.entry:problem (SHALL:able-to-populate, SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11450-4').exists()).all(entry.where(reference.contains('Condition') or reference.exists()).exists()) and Bundle.entry.resource.ofType(Condition).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAllergies (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='48765-2').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAllergies.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='48765-2').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAllergies.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='48765-2').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAllergies.entry:allergyOrIntolerance (SHALL:able-to-populate, SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='48765-2').exists()).all(entry.where(reference.contains('AllergyIntolerance') or reference.exists()).exists()) and Bundle.entry.resource.ofType(AllergyIntolerance).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedications (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='10160-0').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedications.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='10160-0').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedications.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='10160-0').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedications.entry:medicationStatementOrRequest (SHALL:able-to-populate, SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='10160-0').exists()).all(entry.where(reference.contains('MedicationStatement') or reference.exists()).exists()) and Bundle.entry.resource.ofType(MedicationStatement).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionImmunizations (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='11369-6').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionImmunizations.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11369-6').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionImmunizations.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11369-6').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionImmunizations.entry:immunization (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11369-6').exists()).all(entry.where(reference.contains('Immunization') or reference.exists()).exists()) and Bundle.entry.resource.ofType(Immunization).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionResults (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='30954-2').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionResults.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='30954-2').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionResults.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='30954-2').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionResults.entry:results-observation-laboratory-pathology (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='30954-2').exists()).all(entry.where(reference.contains('Observation') or reference.exists()).exists()) and Bundle.entry.resource.ofType(Observation).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionResults.entry:results-observation-radiology (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='30954-2').exists()).all(entry.where(reference.contains('Observation') or reference.exists()).exists()) and Bundle.entry.resource.ofType(Observation).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProceduresHx (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='47519-4').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProceduresHx.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='47519-4').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProceduresHx.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='47519-4').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProceduresHx.entry:procedure (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='47519-4').exists()).all(entry.where(reference.contains('Procedure') or reference.exists()).exists()) and Bundle.entry.resource.ofType(Procedure).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedicalDevices (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).all(section.where(code.coding.where(system='http://loinc.org' and code='46264-8').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedicalDevices.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='46264-8').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedicalDevices.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='46264-8').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedicalDevices.entry:deviceStatement (SHOULD:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='46264-8').exists()).all(entry.where(reference.contains('DeviceUseStatement') or reference.exists()).exists()) and Bundle.entry.resource.ofType(DeviceUseStatement).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAdvanceDirectives.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='42348-3').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAdvanceDirectives.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='42348-3').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAlerts.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='104605-1').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAlerts.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='104605-1').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionFunctionalStatus.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='47420-5').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionFunctionalStatus.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='47420-5').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPastProblems.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11348-0').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPastProblems.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='11348-0').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPregnancyHx.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='10162-6').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPregnancyHx.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='10162-6').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPatientStory.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='81338-6').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPatientStory.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='81338-6').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPlanOfCare.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='18776-5').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionPlanOfCare.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='18776-5').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionSocialHistory.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='29762-2').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionSocialHistory.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='29762-2').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionVitalSigns.title (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='8716-3').exists()).all(title.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionVitalSigns.text (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(system='http://loinc.org' and code='8716-3').exists()).all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "section:sectionProblems.emptyReason (can be populated) — Creator confirms each of these is supported for \"Composition, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionAllergies.emptyReason (can be populated) — Creator confirms each of these is supported for \"Composition, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "section:sectionMedications.emptyReason (can be populated) — Creator confirms each of these is supported for \"Composition, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "log \"Composition.meta.profile MAY be populated — recorded, not asserted\""
      }]
    }]
  },
  {
    "name" : "The people and organisations",
    "description" : "Rule: The people and organisations — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-003 Patient (IPS) — the Creator populates name; 10 elements when known",
      "description" : "Covers Patient-uv-ips: Patient.identifier, Patient.name, Patient.name.use, Patient.name.text, Patient.name.family, Patient.name.given, Patient.telecom, Patient.gender, Patient.birthDate, Patient.address, Patient.generalPractitioner.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Patient) Patient.identifier (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).all(identifier.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.name (SHALL:populate): $ips at \"Bundle.entry.resource.ofType(Patient).all(name.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.name.use (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).name.all(use.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.name.family (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).name.all(family.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.name.given (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).name.all(given.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.telecom (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).all(telecom.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.gender (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).all(gender.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.birthDate (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).all(birthDate.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Patient.address (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Patient).all(address.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "name.text (can be populated) — Creator confirms each of these is supported for \"Patient, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "generalPractitioner (can be populated) — Creator confirms each of these is supported for \"Patient, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-004 Practitioner (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Practitioner-uv-ips: Practitioner.name, Practitioner.name.family, Practitioner.name.given, Practitioner.telecom, Practitioner.address.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Practitioner) Practitioner.name (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Practitioner).all(name.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Practitioner.name.family (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Practitioner).name.all(family.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Practitioner.name.given (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Practitioner).name.all(given.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Practitioner.telecom (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Practitioner).all(telecom.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "address (can be populated) — Creator confirms each of these is supported for \"Practitioner, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-005 PractitionerRole (IPS) — the Creator populates 1 element when known",
      "description" : "Covers PractitionerRole-uv-ips: PractitionerRole.organization.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "organization (can be populated) — Creator confirms each of these is supported for \"PractitionerRole, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-006 Organization (IPS) — the Creator populates 3 elements when known",
      "description" : "Covers Organization-uv-ips: Organization.name, Organization.telecom, Organization.address.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Organization) Organization.name (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Organization).all(name.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "telecom (can be populated) — Creator confirms each of these is supported for \"Organization, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "address (can be populated) — Creator confirms each of these is supported for \"Organization, when the information is known\""
      }]
    }]
  },
  {
    "name" : "The required sections: problems, allergies, medications",
    "description" : "Rule: The required sections: problems, allergies, medications — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-007 AllergyIntolerance (IPS) — the Creator populates 9 elements when known",
      "description" : "Covers AllergyIntolerance-uv-ips: AllergyIntolerance.clinicalStatus, AllergyIntolerance.type, AllergyIntolerance.code, AllergyIntolerance.patient, AllergyIntolerance.patient.reference, AllergyIntolerance.onset[x], AllergyIntolerance.onset[x]:onsetDateTime, AllergyIntolerance.reaction, AllergyIntolerance.reaction.manifestation, AllergyIntolerance.reaction.severity.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(AllergyIntolerance) AllergyIntolerance.clinicalStatus (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(AllergyIntolerance).all(clinicalStatus.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "AllergyIntolerance.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(AllergyIntolerance).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "AllergyIntolerance.patient (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(AllergyIntolerance).all(patient.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "AllergyIntolerance.patient.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(AllergyIntolerance).patient.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "type (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "onset[x] (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "onset[x]:onsetDateTime (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "reaction (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "reaction.manifestation (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "reaction.severity (can be populated) — Creator confirms each of these is supported for \"AllergyIntolerance, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-008 Condition (IPS) — the Creator populates 7 elements when known",
      "description" : "Covers Condition-uv-ips: Condition.clinicalStatus, Condition.category, Condition.severity, Condition.code, Condition.subject, Condition.subject.reference, Condition.onset[x], Condition.onset[x]:onsetDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Condition) Condition.clinicalStatus (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Condition).all(clinicalStatus.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Condition.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Condition).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Condition.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Condition).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Condition.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Condition).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Condition.onset[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Condition).all(onset.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Condition.onset[x]:onsetDateTime (SHOULD:able-to-populate): $ips at \"Bundle.entry.resource.ofType(Condition).all(onset.ofType(dateTime).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "category (can be populated) — Creator confirms each of these is supported for \"Condition, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "severity (can be populated) — Creator confirms each of these is supported for \"Condition, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-009 Medication (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Medication-uv-ips: Medication.code, Medication.form, Medication.ingredient, Medication.ingredient.item[x], Medication.ingredient.strength.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (can be populated) — Creator confirms each of these is supported for \"Medication, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "form (can be populated) — Creator confirms each of these is supported for \"Medication, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "ingredient (can be populated) — Creator confirms each of these is supported for \"Medication, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.item[x] (can be populated) — Creator confirms each of these is supported for \"Medication, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "ingredient.strength (can be populated) — Creator confirms each of these is supported for \"Medication, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-010 MedicationRequest (IPS) — the Creator populates 6 elements when known",
      "description" : "Covers MedicationRequest-uv-ips: MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.subject.reference, MedicationRequest.dosageInstruction, MedicationRequest.dosageInstruction.text, MedicationRequest.dosageInstruction.timing.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "medication[x] (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.text (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "dosageInstruction.timing (can be populated) — Creator confirms each of these is supported for \"MedicationRequest, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-011 MedicationStatement (IPS) — the Creator populates 7 elements when known",
      "description" : "Covers MedicationStatement-uv-ips: MedicationStatement.medication[x], MedicationStatement.subject, MedicationStatement.subject.reference, MedicationStatement.effective[x], MedicationStatement.effective[x]:effectiveDateTime, MedicationStatement.dosage, MedicationStatement.dosage.text, MedicationStatement.dosage.timing.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(MedicationStatement) MedicationStatement.medication[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).all(medication.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.effective[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).all(effective.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.effective[x]:effectiveDateTime (SHOULD:able-to-populate): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).all(effective.ofType(dateTime).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.dosage (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).all(dosage.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.dosage.text (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(MedicationStatement).dosage.all(text.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "MedicationStatement.dosage.timing (SHALL:populate-if-known) — the reference data carries it on some instances: $ips at \"Bundle.entry.resource.ofType(MedicationStatement).dosage.where(timing.exists()).exists()\" should be true"
      }]
    }]
  },
  {
    "name" : "The recommended sections: immunizations, results, procedures, devices",
    "description" : "Rule: The recommended sections: immunizations, results, procedures, devices — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-012 Immunization (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Immunization-uv-ips: Immunization.status, Immunization.vaccineCode, Immunization.patient, Immunization.patient.reference, Immunization.occurrence[x], Immunization.occurrence[x]:occurrenceDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Immunization) Immunization.status (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Immunization).all(status.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Immunization.vaccineCode (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Immunization).all(vaccineCode.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Immunization.patient (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Immunization).all(patient.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Immunization.patient.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Immunization).patient.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Immunization.occurrence[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Immunization).all(occurrence.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Immunization.occurrence[x]:occurrenceDateTime (SHOULD:able-to-populate): $ips at \"Bundle.entry.resource.ofType(Immunization).all(occurrence.ofType(dateTime).exists())\" should be true"
      }]
    },
    {
      "name" : "ips-creator-013 Observation Results - Laboratory/Pathology (IPS) — the Creator populates 10 elements when known",
      "description" : "Covers Observation-results-laboratory-pathology-uv-ips: Observation.category:laboratory, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.value[x]:valueQuantity, Observation.value[x]:valueCodeableConcept, Observation.component.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()) Observation.category:laboratory (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(category.where(coding.where(system='http://terminology.hl7.org/CodeSystem/observation-category' and code='laboratory').exists()).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.effective[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(effective.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.effective[x]:effectiveDateTime (SHOULD:able-to-populate): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(effective.ofType(dateTime).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.performer (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).all(performer.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.value[x]:valueString (SHALL:populate-if-known) — the reference data carries it on some instances: $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).where(value.ofType(string).exists()).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.value[x]:valueQuantity (SHALL:populate-if-known) — the reference data carries it on some instances: $ips at \"Bundle.entry.resource.ofType(Observation).where(category.coding.where(code='laboratory').exists()).where(value.ofType(Quantity).exists()).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueCodeableConcept (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "component (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-014 Observation Results - Radiology (IPS) — the Creator populates 8 elements when known",
      "description" : "Covers Observation-results-radiology-uv-ips: Observation.category:radiology, Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.effective[x]:effectiveDateTime, Observation.performer, Observation.value[x]:valueString, Observation.component.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "category:radiology (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "code (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "performer (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueString (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "component (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-015 DiagnosticReport (IPS) — the Creator populates 6 elements when known",
      "description" : "Covers DiagnosticReport-uv-ips: DiagnosticReport.code, DiagnosticReport.subject, DiagnosticReport.subject.reference, DiagnosticReport.effective[x], DiagnosticReport.effective[x]:effectiveDateTime, DiagnosticReport.performer, DiagnosticReport.result:observation-results.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x]:effectiveDateTime (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "performer (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "result:observation-results (can be populated) — Creator confirms each of these is supported for \"DiagnosticReport, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-016 Specimen (IPS) — the Creator populates 3 elements when known",
      "description" : "Covers Specimen-uv-ips: Specimen.type, Specimen.subject, Specimen.subject.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "type (can be populated) — Creator confirms each of these is supported for \"Specimen, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"Specimen, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"Specimen, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-017 ImagingStudy (IPS) — the Creator populates 12 elements when known",
      "description" : "Covers ImagingStudy-uv-ips: ImagingStudy.identifier, ImagingStudy.subject, ImagingStudy.subject.reference, ImagingStudy.started, ImagingStudy.procedureCode, ImagingStudy.reasonCode, ImagingStudy.series, ImagingStudy.series.uid, ImagingStudy.series.modality, ImagingStudy.series.instance, ImagingStudy.series.instance.uid, ImagingStudy.series.instance.sopClass.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "started (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "procedureCode (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "reasonCode (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series.uid (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series.modality (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series.instance (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.uid (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "series.instance.sopClass (can be populated) — Creator confirms each of these is supported for \"ImagingStudy, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-018 Procedure (IPS) — the Creator populates 4 elements when known",
      "description" : "Covers Procedure-uv-ips: Procedure.code, Procedure.subject, Procedure.subject.reference, Procedure.performed[x], Procedure.performed[x]:performedDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Procedure) Procedure.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Procedure).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Procedure.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Procedure).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Procedure.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Procedure).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Procedure.performed[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Procedure).all(performed.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Procedure.performed[x]:performedDateTime (SHOULD:able-to-populate): $ips at \"Bundle.entry.resource.ofType(Procedure).all(performed.ofType(dateTime).exists())\" should be true"
      }]
    },
    {
      "name" : "ips-creator-019 Device - Performer or Observer (IPS) — the Creator populates 3 elements when known",
      "description" : "Covers Device-observer-uv-ips: Device.identifier, Device.manufacturer, Device.modelNumber.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "identifier (can be populated) — Creator confirms each of these is supported for \"Device, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "manufacturer (can be populated) — Creator confirms each of these is supported for \"Device, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "modelNumber (can be populated) — Creator confirms each of these is supported for \"Device, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-020 Device (IPS) — the Creator populates 1 element when known",
      "description" : "Covers Device-uv-ips: Device.type.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Device) Device.type (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Device).all(type.exists())\" should be true"
      }]
    },
    {
      "name" : "ips-creator-021 DeviceUseStatement (IPS) — the Creator populates 4 elements when known",
      "description" : "Covers DeviceUseStatement-uv-ips: DeviceUseStatement.subject, DeviceUseStatement.subject.reference, DeviceUseStatement.timing[x], DeviceUseStatement.timing[x]:timingDateTime, DeviceUseStatement.device.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(DeviceUseStatement) DeviceUseStatement.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(DeviceUseStatement).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "DeviceUseStatement.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(DeviceUseStatement).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "DeviceUseStatement.device (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(DeviceUseStatement).all(device.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "timing[x] (can be populated) — Creator confirms each of these is supported for \"DeviceUseStatement, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "timing[x]:timingDateTime (can be populated) — Creator confirms each of these is supported for \"DeviceUseStatement, when the information is known\""
      }]
    }]
  },
  {
    "name" : "The optional sections: alerts, pregnancy, social history",
    "description" : "Rule: The optional sections: alerts, pregnancy, social history — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-022 Flag - Alert (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Flag-alert-uv-ips: Flag.extension:flag-priority, Flag.category, Flag.code, Flag.subject, Flag.subject.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Flag) Flag.category (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Flag).all(category.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Flag.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Flag).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Flag.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Flag).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Flag.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Flag).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "extension:flag-priority (can be populated) — Creator confirms each of these is supported for \"Flag, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-023 Observation Pregnancy - Expected Delivery Date (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Observation-pregnancy-edd-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueDateTime.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueDateTime (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-024 Observation Pregnancy - Outcome (IPS) — the Creator populates 5 elements when known",
      "description" : "Covers Observation-pregnancy-outcome-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueQuantity.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "code (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "subject.reference (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "effective[x] (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "value[x]:valueQuantity (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      }]
    },
    {
      "name" : "ips-creator-025 Observation Pregnancy - Status (IPS) — the Creator populates 7 elements when known",
      "description" : "Covers Observation-pregnancy-status-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x], Observation.value[x]:valueCodeableConcept, Observation.hasMember, Observation.hasMember.reference.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()) Observation.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.effective[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()).all(effective.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.value[x]:valueCodeableConcept (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='82810-3').exists()).all(value.ofType(CodeableConcept).exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "hasMember (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      },
      {
        "severity" : "error",
        "human" : "hasMember.reference (can be populated) — Creator confirms each of these is supported for \"Observation, when the information is known\""
      }]
    }]
  },
  {
    "name" : "Data types used throughout",
    "description" : "Rule: Data types used throughout — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-026 Observation Social History - Tobacco Use (IPS) — the Creator populates 4 elements when known",
      "description" : "Covers Observation-tobaccouse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='72166-2').exists()) Observation.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='72166-2').exists()).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='72166-2').exists()).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='72166-2').exists()).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.effective[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='72166-2').exists()).all(effective.exists())\" should be true"
      }]
    },
    {
      "name" : "ips-creator-027 Observation Social History - Alcohol Use (IPS) — the Creator populates 4 elements when known",
      "description" : "Covers Observation-alcoholuse-uv-ips: Observation.code, Observation.subject, Observation.subject.reference, Observation.effective[x].",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Instances: Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='74013-4').exists()) Observation.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='74013-4').exists()).all(code.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='74013-4').exists()).all(subject.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.subject.reference (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='74013-4').exists()).subject.all(reference.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Observation.effective[x] (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.ofType(Observation).where(code.coding.where(code='74013-4').exists()).all(effective.exists())\" should be true"
      }]
    },
    {
      "name" : "ips-creator-028 Codeable Concept (IPS) — the Creator populates 2 elements when known",
      "description" : "Covers CodeableConcept-uv-ips: CodeableConcept.coding, CodeableConcept.text.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "CodeableConcept.coding (SHALL:populate-if-known) — the reference data carries it on some instances: $ips at \"Bundle.entry.resource.descendants().ofType(CodeableConcept).where(coding.exists()).exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "CodeableConcept.text (SHALL:populate-if-known) — the reference data carries it on some instances: $ips at \"Bundle.entry.resource.descendants().ofType(CodeableConcept).where(text.exists()).exists()\" should be true"
      }]
    },
    {
      "name" : "ips-creator-029 Coding with translations — the Creator populates 2 elements when known",
      "description" : "Covers Coding-uv-ips: Coding.system, Coding.code.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "Coding.system (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.descendants().ofType(Coding).all(system.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Coding.code (SHALL:populate-if-known): $ips at \"Bundle.entry.resource.descendants().ofType(Coding).all(code.exists())\" should be true"
      }]
    }]
  },
  {
    "name" : "A patient with no known problems, allergies or medications still gets the required sections",
    "description" : "Rule: A patient with no known problems, allergies or medications still gets the required sections — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-creator.feature"
    }],
    "test" : [{
      "name" : "ips-creator-900 Required sections carry an explicit no-information statement",
      "description" : "Covers Composition-uv-ips: Composition.section:sectionProblems.emptyReason, Composition.section:sectionAllergies.emptyReason, Composition.section:sectionMedications.emptyReason.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$ipsNoInfo should conform to \"http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips\" ignoring slicing errors"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionProblems.emptyReason (SHALL:populate-if-known) — or a \"no known\" entry: $ipsNoInfo at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(code='11450-4').exists()).all(emptyReason.exists() or entry.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionAllergies.emptyReason (SHALL:populate-if-known) — or a \"no known\" entry: $ipsNoInfo at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(code='48765-2').exists()).all(emptyReason.exists() or entry.exists())\" should be true"
      },
      {
        "severity" : "error",
        "human" : "Composition.section:sectionMedications.emptyReason (SHALL:populate-if-known) — or a \"no known\" entry: $ipsNoInfo at \"Bundle.entry.resource.ofType(Composition).section.where(code.coding.where(code='10160-0').exists()).all(emptyReason.exists() or entry.exists())\" should be true"
      }]
    }]
  }]
}

```

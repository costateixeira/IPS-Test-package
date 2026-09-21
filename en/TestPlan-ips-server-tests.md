# IPS Server Test Plan - IPS: TestPlans and Gherkin for the IPS actors v0.1.0

## TestPlan: IPS Server Test Plan (Experimental) 

 
Test plan for the **IPS Server** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/). An IPS Server is a FHIR server acting as an IPS Creator by providing conformant IPS documents in response to FHIR API requests (CapabilityStatement ips-server). Each `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim. The tests declare which specification obligations they cover (9 element obligations across the plan); the coverage matrix is checked mechanically against the specification package. 

**Scopes**

* **Reference**: [IPS Server Capability Statement](http://hl7.org/fhir/uv/ips/2.0.1/CapabilityStatement-ips-server.html)
  * **Description**: The IPS Server actor — a FHIR server acting as an IPS Creator through the $summary operation — is the system under test.

**1 Suite: The server declares the IPS capabilities**

Rule: The server declares the IPS capabilities — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-server.feature

**Tests**

* **Name**: ips-server-001 The CapabilityStatement declares the $summary operation
  * **Operation**: gherkin/Scenario

-------

**2 Suite: $summary returns an IPS document**

Rule: $summary returns an IPS document — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-server.feature

**Tests**

* **Name**: ips-server-002 $summary by patient identifier returns a Bundle (IPS) with identifier, timestamp and the composition first
  * **Description**: Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.
  * **Operation**: gherkin/Scenario
* **Name**: ips-server-003 The returned Composition is complete and about the requested patient
  * **Description**: Covers Composition-uv-ips: Composition.status, Composition.type, Composition.subject, Composition.date, Composition.author, Composition.title.
  * **Operation**: gherkin/Scenario
* **Name**: ips-server-004 $summary honours the profile parameter
  * **Description**: 
  * **Operation**: gherkin/Scenario
* **Name**: ips-server-005 An unknown patient is refused, not answered with an empty document
  * **Description**: 
  * **Operation**: gherkin/Scenario

-------

**3 Suite: The document the server returns meets the Creator obligations**

Rule: The document the server returns meets the Creator obligations — the scenarios grouped under it in the feature file.

**Inputs**

* **Name**: gherkin-script
  * **File**: ips-server.feature

**Tests**

* **Name**: ips-server-006 The returned document is the input for the Creator test cases
  * **Operation**: gherkin/Scenario



## Resource Content

```json
{
  "resourceType" : "TestPlan",
  "resourceDefinition" : "http://hl7.org/fhir/StructureDefinition/TestPlan|0.1.0-snapshot1",
  "id" : "ips-server-tests",
  "url" : "http://example.com/fhir/hl7.fhir.uv.ips.test/TestPlan/ips-server-tests",
  "version" : "0.1.0",
  "name" : "IPSServerTestPlan",
  "title" : "IPS Server Test Plan",
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
  "description" : "Test plan for the **IPS Server** actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/).\nAn IPS Server is a FHIR server acting as an IPS Creator by providing conformant\nIPS documents in response to FHIR API requests (CapabilityStatement ips-server).\nEach `suite` below is a `Rule:` of the Gherkin feature named by `suite.input.file`, and each `suite.test` one of its `Scenario:` lines, matched by the scenario's identifier. The assertions are the scenario's `Then` steps, verbatim.\nThe tests declare which specification obligations they cover (9 element obligations across the plan); the coverage matrix is checked mechanically against the specification package.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "purpose" : "To declare, in a machine-readable and runnable form, which behaviours a system claiming conformance to the IPS Server actor must demonstrate.",
  "scope" : [{
    "reference" : "http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server",
    "description" : "The IPS Server actor — a FHIR server acting as an IPS Creator through the $summary operation — is the system under test."
  }],
  "runner" : "https://www.itb.ec.europa.eu/docs/guides/latest/",
  "suite" : [{
    "name" : "The server declares the IPS capabilities",
    "description" : "Rule: The server declares the IPS capabilities — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-server.feature"
    }],
    "test" : [{
      "name" : "ips-server-001 The CapabilityStatement declares the $summary operation",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be 200"
      },
      {
        "severity" : "error",
        "human" : "$capability at \"CapabilityStatement.rest.where(mode='server').resource.where(type='Patient').operation.where(name='summary').exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$capability at \"CapabilityStatement.instantiates.where($this.startsWith('http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server')).exists() or CapabilityStatement.rest.resource.where(type='Patient').operation.where(name='summary').definition.exists()\" should be true"
      }]
    }]
  },
  {
    "name" : "$summary returns an IPS document",
    "description" : "Rule: $summary returns an IPS document — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-server.feature"
    }],
    "test" : [{
      "name" : "ips-server-002 $summary by patient identifier returns a Bundle (IPS) with identifier, timestamp and the composition first",
      "description" : "Covers Bundle-uv-ips: Bundle.identifier, Bundle.timestamp, Bundle.entry:composition.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be 200"
      },
      {
        "severity" : "error",
        "human" : "$ips should conform to \"http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips\" ignoring slicing errors"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.type\" should be \"document\""
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.identifier.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.timestamp.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.first().resource.ofType(Composition).exists()\" should be true"
      }]
    },
    {
      "name" : "ips-server-003 The returned Composition is complete and about the requested patient",
      "description" : "Covers Composition-uv-ips: Composition.status, Composition.type, Composition.subject, Composition.date, Composition.author, Composition.title.",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be 200"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).all(status = 'final' or status = 'amended' or status = 'preliminary')\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).type.coding.where(system='http://loinc.org' and code='60591-5').exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).subject.reference.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).date.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).author.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Composition).title.exists()\" should be true"
      },
      {
        "severity" : "error",
        "human" : "$ips at \"Bundle.entry.resource.ofType(Patient).identifier.where(value='$patientIdentifier').exists() or Bundle.entry.resource.ofType(Patient).exists()\" should be true"
      }]
    },
    {
      "name" : "ips-server-004 $summary honours the profile parameter",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be 200"
      },
      {
        "severity" : "error",
        "human" : "$ipsProfiled should conform to \"http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips\" ignoring slicing errors"
      }]
    },
    {
      "name" : "ips-server-005 An unknown patient is refused, not answered with an empty document",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be one of \"404, 400, 422\""
      },
      {
        "severity" : "error",
        "human" : "$missing at \"OperationOutcome.issue.exists()\" should be true"
      }]
    }]
  },
  {
    "name" : "The document the server returns meets the Creator obligations",
    "description" : "Rule: The document the server returns meets the Creator obligations — the scenarios grouped under it in the feature file.",
    "input" : [{
      "name" : "gherkin-script",
      "file" : "ips-server.feature"
    }],
    "test" : [{
      "name" : "ips-server-006 The returned document is the input for the Creator test cases",
      "operation" : "gherkin/Scenario",
      "assertion" : [{
        "severity" : "error",
        "human" : "$response.status should be 200"
      },
      {
        "severity" : "error",
        "human" : "$ips should conform to \"http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips\" ignoring slicing errors"
      },
      {
        "severity" : "error",
        "human" : "Client is informed \"Continue with ips-creator.feature: use this returned document as the exported IPS.\" with $ips"
      }]
    }]
  }]
}

```

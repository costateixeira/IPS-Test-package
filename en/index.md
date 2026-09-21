# Home - IPS: TestPlans and Gherkin for the IPS actors v0.1.0

## Home

A demonstration IG that declares, as TestPlan resources and Gherkin feature files, the conformance tests for the three actors of the HL7 International Patient Summary (IPS) 2.0.1: Creator, Consumer and Server. The tests are derived mechanically from the obligations the IPS profiles state, and every obligation is traceable to a test case that names its element.

> **This is not an approved HL7 test specification.**It exists to exercise the tooling: the TestPlan resource, the Gherkin scripts, the mechanical coverage of the specification's obligations, and the packaging of all three.

### What is here

| | |
| :--- | :--- |
| [Testing](testing.md) | How the test plans are derived from the specification's actors and obligations, how the Gherkin scripts are pointed at and packaged, and how they are rendered here. |
| [Method](process.md) | The step-by-step record of how these tests were produced and checked. |
| [Artifacts](artifacts.md) | The TestPlan resources, one per actor, and the Gherkin scripts they name. |
| [Downloads](downloads.md) | The published package, including the raw`.feature`files under`tests/gherkin/`. |

One test plan per actor of [HL7 International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/):

* **[IPS Creator Test Plan](TestPlan-ips-creator-tests.md)** — the document the Creator produces for the reference patient carries every element it is obliged to populate ([Gherkin](Binary-ips-creator-gherkin-script.md))
* **[IPS Consumer Test Plan](TestPlan-ips-consumer-tests.md)** — the Consumer accepts the reference document without error and displays what it should ([Gherkin](Binary-ips-consumer-gherkin-script.md))
* **[IPS Server Test Plan](TestPlan-ips-server-tests.md)** — the $summary operation returns a conformant IPS document; the Creator plan then applies to it ([Gherkin](Binary-ips-server-gherkin-script.md))

All are written for the [Interoperability Test Bed](https://www.itb.ec.europa.eu/docs/guides/latest/) in the OTB Gherkin language (generation 2).

The top menu navigates the sections, and a [Table of Contents](toc.md) lists the full content.


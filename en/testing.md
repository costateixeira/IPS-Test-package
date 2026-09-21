# Testing - IPS: TestPlans and Gherkin for the IPS actors v0.1.0

## Testing

### Testing the HL7 International Patient Summary (IPS) 2.0.1 actors

This guide declares its tests with the [TestPlan](https://build.fhir.org/ig/HL7/fhir-testing-ig/en/StructureDefinition-TestPlan.html) resource from the [FHIR Testing IG](https://build.fhir.org/ig/HL7/fhir-testing-ig/en/) (`hl7.fhir.uv.testing`), one plan per actor the specification defines. Each plan's `scope` names the actor — what is under test — and each of its tests is one `Scenario:` of a Gherkin feature file that the plan points at through `suite.input.file`.

| | | | |
| :--- | :--- | :--- | :--- |
| [IPS Creator Test Plan](TestPlan-ips-creator-tests.md) | [IPS Creator](http://hl7.org/fhir/uv/ips/ActorDefinition/Creator) | 31 scenarios, 229 element obligations covered | `ips-creator.feature` |
| [IPS Consumer Test Plan](TestPlan-ips-consumer-tests.md) | [IPS Consumer](http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer) | 31 scenarios, 240 element obligations covered | `ips-consumer.feature` |
| [IPS Server Test Plan](TestPlan-ips-server-tests.md) | [IPS Server](http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server) | 6 scenarios, 9 element obligations covered | `ips-server.feature` |

### From obligations to test cases

The specification states its expectations as **obligations** on profile elements (the `obligation` extension): which actor must populate, be able to populate, handle or display which element, and how strongly. The test cases are derived from that list, not written from a reading of the narrative:

| | |
| :--- | :--- |
| `SHALL:populate` | The element is present in every instance the Creator produces. |
| `SHALL:populate-if-known` | The element is present wherever the reference dataset the system was loaded with has it. |
| `SHALL:able-to-populate`,`SHOULD:able-to-populate` | Present in the produced document; where the reference data cannot exercise it, the tester attests the capability. |
| `MAY:able-to-populate` | Recorded in the test, not asserted. |
| `SHALL:handle` | The Consumer accepts a document carrying the element without error. |
| `SHOULD:display` | The Consumer shows the element to a human; the tester names the ones it does not, and each is asserted separately. |

Every scenario declares the profile and elements it covers (`@profile:`, `@covers:` tags) and must mention each element in a step; a script checks both against the specification package, so an obligation cannot be silently dropped when the specification or the tests change. The assertions themselves are self-tested against the specification's own example documents before they are published.

### The Gherkin feature files

The executable test cases live under `input/testing/gherkin/`. They ship **as Gherkin, not as a FHIR resource**: the `path-test` parameter mirrors the test tree into the published package under `package/tests/gherkin/`, which is what a test runner consumes. `TestPlan.suite.input.file` names the file, and each `suite.test` matches a `Scenario:` by its identifier.

The Binary resources on this site exist only so the scripts render as syntax-highlighted pages; removing them changes nothing for a runner.


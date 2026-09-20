// ===== RENDERING ONLY — delete with the Binary resource entries in sushi-config.yaml =====
// The Gherkin ships to runners as raw .feature files under package/tests/ via the
// path-test parameter. These Binaries only make each script render as a
// syntax-highlighted page on the IG site ("ig-loader-<file>" inlines the file).

Instance: ips-creator-gherkin-script
InstanceOf: Binary
Usage: #definition
* language = #en
* contentType = #text/x-gherkin
* data = "ig-loader-ips-creator.feature"

Instance: ips-consumer-gherkin-script
InstanceOf: Binary
Usage: #definition
* language = #en
* contentType = #text/x-gherkin
* data = "ig-loader-ips-consumer.feature"

Instance: ips-server-gherkin-script
InstanceOf: Binary
Usage: #definition
* language = #en
* contentType = #text/x-gherkin
* data = "ig-loader-ips-server.feature"

import ballerina/http;
import ballerina/os;

// Port the service listens on.
configurable int port = 8080;

service / on new http:Listener(port) {

    // GET /greeting -> returns the value of the GREETING env var.
    resource function get greeting() returns json {
        string greeting = os:getEnv("GREETING");
        return {
            greeting: greeting == "" ? "Hello from Ballerina (GREETING not set)" : greeting
        };
    }

    // GET /healthz -> simple health check.
    resource function get healthz() returns string {
        return "ok";
    }
}

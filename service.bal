import ballerina/log;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `8082`.
service / on new http:Listener(8082) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        log:printInfo("Greeting resource was invoked with name: " + name);
        return "Hello, " + name;
    }
}

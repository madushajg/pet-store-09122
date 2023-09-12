import ballerina/log;
import ballerina/http;


service / on new http:Listener(8082) {

    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        log:printInfo("Greeting resource was invoked with name: " + name);
        return "Hello, " + name;
    }
}

service /basepath1 on new http:Listener(8083) {

    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        log:printInfo("Greeting resource was invoked with name: " + name);
        return "Hello 2, " + name;
    }
}

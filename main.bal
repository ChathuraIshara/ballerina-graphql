import ballerina/graphql;
import ballerina/io;

listener graphql:Listener gplListener= new (8080);

service graphql:Service /graphql on gplListener{
    function init()
    {
        io:println("Graphql Service started!...");
    }
    resource function get greeting(string name) returns string{
        io:println("greeting function called with name: "+name);
        return "Hello, "+name;
    }
}
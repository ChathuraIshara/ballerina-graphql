import ballerina/graphql;

public type Person record {|
    string name;
    int age;
    string city;
|};

service /graphql on new graphql:Listener(8080) {
    private Person profile;

    function init() {
        self.profile = { name: "Walter White", age: 50, city: "Albuquerque" };
    }

    resource function get profile() returns Person {
        return self.profile;
    }

    remote function updateName(string name) returns Person {
        self.profile.name = name;
        return self.profile;
    }

    remote function updateCity(string city) returns Person {
        self.profile.city = city;
        return self.profile;
    }
    remote function updateAge(int age) returns Person {
        self.profile.age = age;
        return self.profile;
    }
}
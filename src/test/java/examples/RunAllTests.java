package examples;

import com.intuit.karate.junit5.Karate;

class RunAllTests {

    @Karate.Test
    Karate runAll() {
        // Runs everything in examples folder under resources
        return Karate.run("classpath:examples");
    }

}

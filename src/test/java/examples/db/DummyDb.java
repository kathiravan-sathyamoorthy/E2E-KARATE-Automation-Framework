package examples.db;

import java.util.HashMap;
import java.util.Map;

public class DummyDb {
    public static Map<String, Object> connect(Map<String, Object> dbConfig) {
        System.out.println("Connecting to DB with config: " + dbConfig);
        Map<String, Object> result = new HashMap<>();
        result.put("status", "connected");
        result.put("dbName", dbConfig.get("name"));
        return result;
    }
}

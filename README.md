# Karate DSL – Unified API, UI & DB Testing Framework

This project demonstrates how to perform **API**, **UI**, and **Database** testing using **Karate DSL** in a single BDD (Behavior-Driven Development) syntax.

It is fully compatible with **Java 17** and **Maven**, and runs all test types using `mvn test`.

---

## 🧰 Tech Stack

| Layer | Tool / Library | Description |
|-------|----------------|--------------|
| API Testing | [Karate DSL](https://github.com/karatelabs/karate) | BDD-based API automation framework |
| UI Testing | Karate Driver (Chromium) | Automates browser interactions |
| DB Testing | Custom Java utility (`DummyDb.java`) | Demonstrates DB connectivity via Karate |
| Language | Java 17 | |
| Build Tool | Maven | Project and dependency management |

---

## 📁 Project Structure

karate-bdd-framework/
│
├── pom.xml # Maven configuration
├── README.md # Project documentation
│
├── src
│ └── test
│ ├── java
│ │ └── examples
│ │ ├── RunAllTests.java # JUnit test runner
│ │ └── db
│ │ └── DummyDb.java # Dummy DB connector
│ │
│ └── resources
│ └── examples
│ ├── api
│ │ └── api_test.feature # Sample API test
│ ├── ui
│ │ └── ui_test.feature # Sample UI test
│ ├── db
│ │ └── db_test.feature # DB test calling DummyDb
│ ├── combined
│ │ └── full_flow.feature # API + UI + DB combined test
│ └── config
│ └── dbconfig.json # External DB configuration


---

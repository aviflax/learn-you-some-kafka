# Learn You Some Kafka!

Atomic, bite-size, highly-focused hands-on exercises that teach how to work with [Kafka](https://kafka.apache.org/) with [Ruby](https://www.ruby-lang.org/) or [Clojure](https://clojure.org/).

**CURRENT STATUS:** as of April 2018, this is a WIP. We’re working on the exercises [now](https://github.com/FundingCircle/learn-you-some-kafka/projects) and we have one unit (Unit 1, Ruby) ready to go.

## Audience

Engineers who are already proficient with Ruby and/or Clojure but may have zero knowledge of Kafka and streaming data.

## Goal

Provide hands-on exercises that help these engineers learn how to work with Kafka and streaming data using the practices and principles in use at [Funding Circle](https://engineering.fundingcircle.com/).

## Non-Goals

1. Introduce and explain Kafka’s basic model

## The Plan

### Prerequisites

1. A basic high-level understanding of Kafka’s basic model
1. Having a recent and working installation of Docker and docker-compose
1. Clojure
   1. Proficient with opening a `clj` file in an editor, connecting the editor to a REPL, and evaluating individual forms in the editor
1. Ruby
   1. No particular prerequisites

### Approach

* Atomic, bite-size, highly-focused exercises
* Each exercise gives you one new main piece of useful knowledge related to working with Kafka and streaming data
* Published as [a GitHub repository](https://github.com/FundingCircle/learn-you-some-kafka)
* The recommended approach will be for people to clone the repo and then work through the exercises one at a time, in order
* When someone opens the main code file for an exercise, the specific process/experience/workflow they follow will vary by programming system:
  * Ruby:
    * They run the exercise in a terminal using `./start.sh` and they then enter into an interactive lesson which alternates between printing explanatory text and some code that will execute, and then running that code and displaying its results.
  * Clojure:
    * They start reading from the top of the comment form at the top of the file, and evaluate each form inside the comment, as they proceed.
    * As they proceed, they’ll fluidly read about an operation, then evaluate and see the results of that operation.

### Units and Lessons

Each unit and lesson will be available for both Ruby and Clojure.

#### Unit One: Producing and Consuming

1. Producing Strings
1. Consuming Strings
1. Consumer Groups
1. Serialization and Deserialization

#### Unit Two: Avro

1. Producing Avro
1. Consuming Avro
1. Producing and Consuming Avro with a Schema Registry

#### Unit Three: Stream Processing

1. Linear Stream Processing with a Consumer and a Producer
1. Linear Stream Processing with Kafka Streams
1. Stream Processing with Joins
1. Stream Processing with Windows

#### Unit Four: Kafka Connect

1. What the hell is it even
1. TBD

## Who’s Behind This?

* [arsenerei](https://github.com/arsenerei)
* [Avi Flax](https://github.com/aviflax)
* **You?**
  * If you’d like to get involved, please [post an issue](https://github.com/FundingCircle/learn-you-some-kafka/issues/new?labels=Question) asking how you can help!

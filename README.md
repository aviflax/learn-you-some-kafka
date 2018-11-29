# Learn You Some Kafka!

Atomic, bite-size, highly-focused hands-on exercises that teach how to work with [Kafka](https://kafka.apache.org/) using [Ruby](https://www.ruby-lang.org/) or [Clojure](https://clojure.org/).

## Quick Start

### Common

Do these steps first, regardless of which programming system and/or runtime you
wish to use:

1. Ensure:
   1. Docker is running
   1. You’re connected to the Internet
   1. Your Internet connection is fairly fast
1. Clone this repo

### Clojure

Coming soon!

### CRuby

(CRuby is the reference implementation of [Ruby](https://www.ruby-lang.org/). (If
you’re interested in the various names used for various implementations of Ruby,
and why, see [this thorough
article](http://engineering.appfolio.com/appfolio-engineering/2017/12/28/cruby-mri-jruby-rubyspec-rubinius-yarv-a-little-bit-of-ruby-naming).))

From the root of the repo, run:

```shell
cd ruby/cruby/unit_1 && ./start
```

### JRuby

([JRuby](http://jruby.org/) is the predominant implementation of Ruby for the
[JVM](https://en.wikipedia.org/wiki/Java_virtual_machine).)

From the root of the repo, run:

```shell
cd ruby/jruby/unit_1 && ./start
```

## Status

This is a work in progress!

This table shows which units are currently available for which programming system:

| Unit | Clojure | CRuby | JRuby |
| ---- | ------- | ----- | ----- |
| 1: Producing and Consuming  | | ✅ | ✅ |
| 2: Avro | | ✅ | _partial_ |
| 3: Stream Processing | | | |
| 4: Kafka Connect | | | &nbsp; |

For more detailed status, please see [our projects](https://github.com/FundingCircle/learn-you-some-kafka/projects).

## Audience

Engineers who are already proficient with Ruby and/or Clojure but may have little or no hands-on experience with Kafka.

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
    * They run the exercise in a terminal using `./start` and they then enter into an interactive lesson which alternates between printing explanatory text and some code that will execute, and then running that code and displaying its results.
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

## Guidance to Those Wishing to Contribute Units/Lessons

Coming soon!

## Running the Tests

### Ruby

```shell
cd ruby/test

# Test all units:
./test_all_units

# OR test a specific unit or units:
./test_units [path ...]

# For example:
./test_units ../jruby/unit_1/
```

## Contributors

* [Alexander-Blair](https://github.com/Alexander-Blair)
* [arsenerei](https://github.com/arsenerei)
* [Avi Flax](https://github.com/aviflax)
* [Cássio Marques](https://github.com/cassiomarques)
* [Diogo Scudelletti](https://github.com/scudelletti)
* [Sasha Gerrand](https://github.com/sgerrand)
* **You?**
  * If you’d like to get involved, please [post an issue](https://github.com/FundingCircle/learn-you-some-kafka/issues/new?labels=Question) asking how you can help!

# Java Linker Example

This is a simple Hello World! example of how to use Java linker in order to create custom run-time images which only include pieces necessary to run your application.

## Prerequisites

* JDK9 which can be downloaded from [here](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

## Running the example

NOTE: Scripts below rely on `/usr/libexec/java_home` which is present in macOS, but it's an easy change to make it work in Linux.

```bash
# Complile Java sources and build new run-time image
./build.sh

# Run application from new image
./run.sh
```

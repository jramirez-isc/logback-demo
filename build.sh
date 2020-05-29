#!/usr/bin/env bash

mvn clean compile assembly:single
native-image --no-fallback -H:ReflectionConfigurationFiles=config-dir/reflect-config.json -H:ResourceConfigurationFiles=config-dir/resource-config.json -jar target/logback-1.0-SNAPSHOT-jar-with-dependencies.jar com.sample.app --allow-incomplete-classpath --initialize-at-build-time=ch.qos.logback.core.boolex.JaninoEventEvaluatorBase

echo "In regular JVM"
java -cp target/logback-1.0-SNAPSHOT-jar-with-dependencies.jar com.sample.App
echo ""
echo "As GraalVM native image"
./com.sample.app
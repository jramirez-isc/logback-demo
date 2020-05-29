Prerequisites: 
GraalVM 19.3.2 JDK11

Execute:
```
./build.sh
```

Expected output:
```
In regular JVM
-2020-05-29 10:58:08.290 -DEBUG -  --- [           main] ROOT                                     : Message 1
-2020-05-29 10:58:08.297 - WARN -  --- [           main] ROOT                                     : Message 2

As GraalVM native image
-2020-05-29 10:58:08.317 -DEBUG -  --- [           main] ROOT                                     : Message 1
-2020-05-29 10:58:08.318 - WARN -  --- [           main] ROOT                                     : Message 2
```
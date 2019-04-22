package io.paulocosta.cloudrunpoc

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CloudRunPocApplication

fun main(args: Array<String>) {
    runApplication<CloudRunPocApplication>(*args)
}

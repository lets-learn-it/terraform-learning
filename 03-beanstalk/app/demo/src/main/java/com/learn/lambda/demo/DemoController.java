package com.learn.lambda.demo;

import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@Log4j2
public class DemoController {
    
    @GetMapping(path = "/health")
    public ResponseEntity<String> healthPoint() {
        log.info("Inside health");
        return ResponseEntity.ok("Ok");
    }

    @GetMapping(path = "/hello-world")
    public String helloWorld() {
        return "Hello World";
    }
}

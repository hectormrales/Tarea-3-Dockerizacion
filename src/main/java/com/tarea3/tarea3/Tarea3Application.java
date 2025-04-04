package com.tarea3.tarea3;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@ComponentScan(basePackages = {
    "com.tarea3.tarea3.auth.config",
    "com.tarea3.tarea3.auth.controller",
    "com.tarea3.tarea3.auth.entity",
    "com.tarea3.tarea3.auth.repository",
    "com.tarea3.tarea3.auth.service",
    "com.tarea3.tarea3.auth.SistemaAutenticacion"
})
@EnableJpaRepositories(basePackages = "com.tarea3.tarea3.auth.repository")
@EntityScan(basePackages = "com.tarea3.tarea3.auth.entity")
public class Tarea3Application {

	public static void main(String[] args) {
		SpringApplication.run(Tarea3Application.class, args);
	}
}

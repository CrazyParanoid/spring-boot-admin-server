package ru.agiletech.admin.server.config;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAdminServer
@EnableDiscoveryClient
public class ApplicationConfig {
}

package com.yupi.wayneapiclientsdk;

import com.yupi.wayneapiclientsdk.client.WayneApiClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties("wayneapi.client")
@Data
@ComponentScan
public class WayneApiClientConfig {
    private String accessKey;

    private String secretKey;

    @Bean
    public WayneApiClient wayneApiClient(){
        return new WayneApiClient(accessKey,secretKey);
    }
}

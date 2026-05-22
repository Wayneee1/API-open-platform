package com.yupi.wayneapiinterface;

import com.yupi.wayneapiclientsdk.client.WayneApiClient;
import com.yupi.wayneapiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class WayneapiInterfaceApplicationTests {
    @Resource
    private WayneApiClient wayneApiClient;
    @Test
    void contextLoads() {
        String result = wayneApiClient.getNameByGet("wayne111");
        User user = new User();
        user.setUsername("wayne");
        String usernameByPost = wayneApiClient.getUsernameByPost(user);
        System.out.println(result);
        System.out.println(usernameByPost);
    }

}

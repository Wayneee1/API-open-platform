package com.yupi.wayneapiinterface.controller;

import com.yupi.wayneapiclientsdk.model.User;
import com.yupi.wayneapiclientsdk.utils.SignUtils;
import org.springframework.remoting.RemoteTimeoutException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 名称 API
 *
 * @author wayne
 */
@RestController
@RequestMapping("/name")
public class NameController {
    @GetMapping("/")
    public String getNameByGet(String name) {

        return "GET 你的名字是" + name;
    }

    @PostMapping("/")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {
        String accessKey = request.getHeader("accessKey");
        String nonce = request.getHeader("nonce");
        String timestamp = request.getHeader("timestamp");
        String sign = request.getHeader("sign");
        String body = request.getHeader("body");
        // todo 实际情况应该是去数据库中查是否已分配给用户
        if (!accessKey.equals("wayne")) {
            throw new RuntimeException("无权限");
        }
        if(Long.parseLong(nonce) > 10000){
            throw new RuntimeException("无权限");
        }
        // todo 时间和当前时间不能超过5分钟
//        if(timestamp){
//
//        }
        // todo 实际情况从数据库中查出secretKey
        String serverSign = SignUtils.genSign(body,"abcdefgh");
        //通过客户端的用户参数和密钥用相同算法生成签名，与客户端传过来的sign(签名)对比是否一致
        if(!sign.equals((serverSign))){
            throw new RemoteTimeoutException("无权限");
        }
        return "POST 用户名字是" + user.getUsername();
    }


}

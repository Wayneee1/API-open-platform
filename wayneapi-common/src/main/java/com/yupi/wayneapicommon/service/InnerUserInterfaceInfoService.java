package com.yupi.wayneapicommon.service;

import com.yupi.wayneapicommon.model.entity.UserInterfaceInfo;

/**
* @author Wayne
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
* @createDate 2024-01-14 18:45:22
*/
public interface InnerUserInterfaceInfoService {


    /**
     * 调用接口统计
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId,long userId);
}

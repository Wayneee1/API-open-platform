package com.yupi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yupi.wayneapicommon.model.entity.InterfaceInfo;

/**
* @author Wayne
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2023-12-31 15:47:56
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {
    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}

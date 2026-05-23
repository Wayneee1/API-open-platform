# AGENTS.md

## 项目概述

Wayne API 开放平台是一个基于 Spring Boot、Spring Cloud Gateway、Dubbo、Nacos 和 MyBatis-Plus 的 API 开放与调用管理系统，支持接口管理、用户 AK/SK 鉴权、SDK 调用、网关转发、调用次数统计和热门接口分析。

## 开发命令

- 安装公共模块：`mvn -DskipTests install -f wayneapi-common/pom.xml`
- 安装 SDK 模块：`mvn -DskipTests install -f wayneapi-client-sdk/pom.xml`
- 编译网关：`mvn -DskipTests compile -f wayneapi-gateway/pom.xml`
- 编译开放接口服务：`mvn -DskipTests compile -f wayneapi-interface/pom.xml`
- 编译管理后端：`mvn -DskipTests compile -f pom.xml`
- 运行测试：`mvn test -f pom.xml`

## 关键目录

- `src/` - 管理后端，包含用户、接口、调用关系、分析统计等业务。
- `wayneapi-client-sdk/` - Java SDK，封装签名和 HTTP 调用。
- `wayneapi-common/` - 公共实体与 Dubbo 内部服务接口。
- `wayneapi-gateway/` - API 网关，负责鉴权、转发、调用统计。
- `wayneapi-interface/` - 示例开放接口服务。
- `sql/` - 数据库初始化脚本。

## 边界约束

- 根 `pom.xml` 当前不是 Maven 聚合父工程，构建时需要按模块顺序执行。
- 建议使用 JDK 17 或 JDK 8；JDK 21 可能触发旧 Lombok 与 javac 的兼容问题。
- 不要把 `secretKey` 放到请求头或日志中；SDK 只发送签名结果。
- 网关中的 `INTERFACE_HOST`、白名单和 Nacos 地址是本地开发配置，部署前需要外置化。
- `manual/` 下文档属于人工维护区域，已有内容不要覆盖。

## AI 上下文

详细规则见 `.cursor/rules/ai-readme/RULE.mdc`：

- 结构：`.cursor/rules/ai-readme/generated/项目结构.mdc`
- 架构：`.cursor/rules/ai-readme/generated/技术架构.mdc`
- 开发：`.cursor/rules/ai-readme/generated/开发指南.mdc`
- 流程：`.cursor/rules/ai-readme/generated/核心流程.mdc`
- 业务：`.cursor/rules/ai-readme/manual/业务知识.mdc`
- 经验：`.cursor/rules/ai-readme/manual/历史经验.mdc`

# 使用包含 Maven 和 Java 17 的基础镜像
FROM maven:3.8.4-openjdk-17

# 将项目文件复制到容器内
COPY . /app

# 设置工作目录
WORKDIR /app

# 使用 Maven 构建项目，跳过测试
RUN mvn clean package -DskipTests

# 暴露端口
EXPOSE 8080

# 启动应用
CMD ["java", "-jar", "target/simple-api-0.0.1-SNAPSHOT.jar"]

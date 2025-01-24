FROM openjdk:23-jdk-alpine

WORKDIR /app

# Copy mã nguồn vào container
COPY . .

# Biến môi trường (nếu cần)
ENV JAVA_OPTS="-Xms512m -Xmx1024m"

# Build ứng dụng (nếu cần)
RUN ./gradlew build

# Expose cổng cần thiết (ví dụ jPOS mặc định dùng 8080 và 9090)
EXPOSE 8080
EXPOSE 9090

# Chạy ứng dụng
CMD ["java", "-jar", "build/libs/tutorial-3.0.0-SNAPSHOT.jar"]
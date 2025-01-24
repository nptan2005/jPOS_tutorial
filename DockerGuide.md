1. Cài đặt Docker CLI trên Codespaces
Docker thường được cài đặt sẵn trên Codespaces, bạn có thể kiểm tra bằng lệnh:

bash
Copy
Edit
docker --version
Nếu Docker CLI được cài đặt, bạn sẽ thấy phiên bản được hiển thị, ví dụ:

plaintext
Copy
Edit
Docker version 24.0.5, build 1234567
Nếu không có, bạn sẽ cần yêu cầu admin GitHub hoặc sử dụng image khác có Docker cài sẵn.

2. Tạo Dockerfile
Tạo một file Dockerfile trong thư mục dự án để định nghĩa cách Docker sẽ build ứng dụng của bạn. Ví dụ:

Dockerfile mẫu cho ứng dụng Java jPOS:
Dockerfile
Copy
Edit
# Sử dụng image OpenJDK làm base
FROM openjdk:17-jdk-slim

# Đặt thư mục làm việc trong container
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
3. Tạo docker-compose.yml (Tùy chọn)
Nếu bạn muốn chạy nhiều container (ví dụ: PostgreSQL, Redis), tạo file docker-compose.yml:

yaml
Copy
Edit
version: "3.9"
services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:8080"
      - "9090:9090"
    volumes:
      - .:/app
    environment:
      - JAVA_OPTS=-Xms512m -Xmx1024m
  db:
    image: postgres:15
    environment:
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: password
    ports:
      - "5432:5432"
4. Build Docker Image
Để build Docker image từ Dockerfile, chạy lệnh:

bash
Copy
Edit
docker build -t my-jpos-app .
Nếu sử dụng docker-compose:

bash
Copy
Edit
docker-compose build
5. Chạy Docker Container
Chạy container từ image đã build:

bash
Copy
Edit
docker run -d -p 8080:8080 -p 9090:9090 --name my-jpos-app my-jpos-app
Nếu dùng docker-compose:

bash
Copy
Edit
docker-compose up -d
6. Kiểm tra Container
Kiểm tra container đang chạy:

bash
Copy
Edit
docker ps
Xem log container:

bash
Copy
Edit
docker logs -f my-jpos-app
7. Kết nối với Container
Nếu bạn cần truy cập vào bên trong container, chạy lệnh:

bash
Copy
Edit
docker exec -it my-jpos-app bash
8. Đẩy Image lên Docker Hub (Tùy chọn)
Nếu bạn muốn lưu trữ image trên Docker Hub:

Đăng nhập Docker Hub:
bash
Copy
Edit
docker login
Tag image:
bash
Copy
Edit
docker tag my-jpos-app your_dockerhub_username/my-jpos-app:latest
Push image:
bash
Copy
Edit
docker push your_dockerhub_username/my-jpos-app:latest
9. Debug và Xử Lý Lỗi
Nếu gặp vấn đề về quyền, bạn có thể cần chạy lệnh Docker với sudo.
Nếu container không chạy, kiểm tra log bằng docker logs.
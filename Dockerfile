FROM tomcat:10.1-jdk17

# Xóa webapps mặc định để gọn container
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy code JSP + cấu hình web.xml vào ROOT app
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Copy code Java đã biên dịch (class) vào WEB-INF/classes
COPY target/classes/ /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/

# Expose cổng
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]

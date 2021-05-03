USE springmvc_may2021;

INSERT INTO role(code, name) VALUES('ADMIN', 'Quản trị');
INSERT INTO role(code, name) VALUES('USER', 'Người dùng');

INSERT INTO user(username, password, fullname, status) VALUES('admin', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'admin', 1);
INSERT INTO user(username, password, fullname, status) VALUES('nguyenvana', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'Nguyễn Văn A', 1);
INSERT INTO user(username, password, fullname, status) VALUES('nguyenvanb', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'Nguyễn Văn B', 1);

INSERT INTO user_role(userId, roleId) VALUES(1, 1);
INSERT INTO user_role(userId, roleId) VALUES(2, 2);
INSERT INTO user_role(userId, roleId) VALUES(3, 2);
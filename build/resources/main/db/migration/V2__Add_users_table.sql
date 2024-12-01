-- Insert new users into the users table
INSERT INTO users (name, email, password, role_id, created_at, updated_at) VALUES 
('John Doe', 'john.doe123@example.com', 'hashed_password_1', 1, NOW(), NOW()),
('Jane Smith', 'jane.smith123@example.com', 'hashed_password_2', 1, NOW(), NOW()),
('Admin User', 'admin123@example.com', 'hashed_password_3', 2, NOW(), NOW());
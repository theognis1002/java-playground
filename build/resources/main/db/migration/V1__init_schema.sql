-- Create the roles table
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,              -- Auto-incrementing primary key
    name VARCHAR(50) NOT NULL UNIQUE    -- Role name, must be unique
);

-- Insert default roles
INSERT INTO roles (name) VALUES 
('USER'),
('ADMIN');

-- Create the users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,              -- Auto-incrementing primary key
    name VARCHAR(100) NOT NULL,         -- User's name
    email VARCHAR(100) NOT NULL UNIQUE, -- User's email, must be unique
    password VARCHAR(255) NOT NULL,     -- Encrypted password
    role_id INT NOT NULL,               -- Foreign key referencing roles
    created_at TIMESTAMP DEFAULT NOW(), -- Timestamp of user creation
    updated_at TIMESTAMP DEFAULT NOW(), -- Timestamp of last update

    -- Define foreign key constraint
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
);

-- Insert a default admin user
INSERT INTO users (name, email, password, role_id) VALUES 
('Admin User', 'admin@example.com', 'admin_password_hash', 2); -- Role 2 = ADMIN
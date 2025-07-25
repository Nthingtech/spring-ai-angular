DROP TABLE IF EXISTS CHAT_MEMORY;
DROP TABLE IF EXISTS spring_ai_chat_memory;

CREATE TABLE IF NOT EXISTS CHAT_MEMORY (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id VARCHAR(256),
    description VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS spring_ai_chat_memory (
    id SERIAL PRIMARY KEY,
    conversation_id VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
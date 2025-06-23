USE EventEaseDB;

CREATE TABLE EventType (
    EventTypeId INT IDENTITY(1,1) PRIMARY KEY,
    EventTypeName VARCHAR(100) NOT NULL
);

ALTER TABLE Event
ADD EventTypeId INT;

ALTER TABLE Event
ADD CONSTRAINT FK_Event_EventType
FOREIGN KEY (EventTypeId) REFERENCES EventType(EventTypeId);

INSERT INTO EventType(EventTypeName)
VALUES
('Wedding'),
('Conference'),
('Birthday'),
('Football match'),
('Consert'),
('Festival');
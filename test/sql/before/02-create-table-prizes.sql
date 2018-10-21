
CREATE TABLE Prizes
(
  id INT IDENTITY NOT NULL
    CONSTRAINT PK_Prizes_id PRIMARY KEY,
  laureate INT NOT NULL
    CONSTRAINT FK_Prizes_laureate
      FOREIGN KEY REFERENCES Laureates(id)
      ON DELETE CASCADE,
  year INT NOT NULL,
  category NVARCHAR(60) NOT NULL,
  share DECIMAL NOT NULL,
  motivation NVARCHAR(2000) NOT NULL,
)

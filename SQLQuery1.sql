CREATE TABLE Arvuti (
    id INT IDENTITY(1,1) PRIMARY KEY,
    mudel NVARCHAR(50),
    hind DECIMAL(10, 2),
    videokaart NVARCHAR(50),
    protsessor NVARCHAR(50),
    RAM INT,
    laoseis INT,
    tootja NVARCHAR(50)
);

CREATE TABLE Tootaja (
    id INT IDENTITY(1,1) PRIMARY KEY,
    eesnimi NVARCHAR(50) NOT NULL,
    perenimi NVARCHAR(50) NOT NULL,
    ametikoht NVARCHAR(50),
    palk DECIMAL(10,2),
    arvuti_id INT,
    FOREIGN KEY (arvuti_id) REFERENCES Arvuti(id)
);

INSERT INTO Arvuti (mudel, hind, videokaart, protsessor, RAM, laoseis, tootja) VALUES
('Mudel A', 1200.50, 'NVIDIA GTX 1660', 'Intel i5-9400F', 16, 10, 'Dell'),
('Mudel B', 1500.00, 'AMD Radeon RX 580', 'AMD Ryzen 5 3600', 32, 5, 'HP');

INSERT INTO Tootaja (eesnimi, perenimi, ametikoht, palk, arvuti_id) VALUES
('Mari', 'Kask', 'Müügijuht', 1800.00, 1),
('Juhan', 'Tamm', 'IT-spetsialist', 2200.00, 2);

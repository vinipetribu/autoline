CREATE DATABASE autoline;
USE autoline;

-- Create Endereco table
CREATE TABLE Endereco (
  id INT AUTO_INCREMENT PRIMARY KEY,
  CEP VARCHAR(45),
  logradouro VARCHAR(45),
  numero VARCHAR(45),
  bairro VARCHAR(45),
  cidade VARCHAR(45),
  estado VARCHAR(45)
);

-- Create Filial table
CREATE TABLE Filial (
  cnpj VARCHAR(16) PRIMARY KEY,
  nome VARCHAR(45),
  status VARCHAR(45),
  endereco_id INT,
  FOREIGN KEY (endereco_id) REFERENCES Endereco(id)
);

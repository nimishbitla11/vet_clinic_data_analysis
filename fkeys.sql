-- Creation of relevant foreign key's 

ALTER TABLE pets
ADD FOREIGN KEY (ownerid) REFERENCES owners(ownerid);

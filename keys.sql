-- For representaion purpose all code for creation of primary keys has been put in same file 

-- Creation of Primary Keys

ALTER TABLE owners
ADD PRIMARY KEY (ownerid)

ALTER TABLE proceduredetails
ADD PRIMARY KEY (proceduretype, proceduresubcode);

ALTER TABLE pets
ADD PRIMARY KEY (petid) 

ALTER TABLE procedurehistory
ADD PRIMARY KEY (petid, proceduretype, proceduresubcode); 

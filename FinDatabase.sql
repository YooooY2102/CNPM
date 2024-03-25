CREATE TABLE ACCOUNT
(
  Id_acc INT NOT NULL,
  Name_acc INT NOT NULL,
  PRIMARY KEY (Id_acc)
);

CREATE TABLE INCOME
(
  Type INT NOT NULL,
  Target INT NOT NULL,
  Id_income INT NOT NULL,
  Id_acc INT NOT NULL,
  PRIMARY KEY (Id_income),
  FOREIGN KEY (Id_acc) REFERENCES ACCOUNT(Id_acc)
);

CREATE TABLE EXPENS_BUDGET
(
  Name INT NOT NULL,
  Budget INT NOT NULL,
  Id_exWithbud INT NOT NULL,
  PRIMARY KEY (Id_exWithbud)
);

CREATE TABLE RECORD
(
  Date INT NOT NULL,
  Name INT NOT NULL,
  Amount INT NOT NULL,
  Type INT NOT NULL,
  Id_record INT NOT NULL,
  PRIMARY KEY (Id_record)
);

CREATE TABLE TRANS_REC
(
  From INT NOT NULL,
  To INT NOT NULL,
  Id_record INT NOT NULL,
  PRIMARY KEY (Id_record),
  FOREIGN KEY (Id_record) REFERENCES RECORD(Id_record)
);

CREATE TABLE INCOME_REC
(
  Id_record INT NOT NULL,
  Id_income INT NOT NULL,
  PRIMARY KEY (Id_record),
  FOREIGN KEY (Id_record) REFERENCES RECORD(Id_record),
  FOREIGN KEY (Id_income) REFERENCES INCOME(Id_income)
);

CREATE TABLE EXPENSE_REC
(
  Id_record INT NOT NULL,
  Id_exWithbud INT NOT NULL,
  PRIMARY KEY (Id_record),
  FOREIGN KEY (Id_record) REFERENCES RECORD(Id_record),
  FOREIGN KEY (Id_exWithbud) REFERENCES EXPENS_BUDGET(Id_exWithbud)
);

CREATE TABLE GOALS
(
  Name INT NOT NULL,
  Initial_amount INT NOT NULL,
  Target_amount INT NOT NULL,
  Target_date INT NOT NULL,
  Id_acc INT NOT NULL,
  FOREIGN KEY (Id_acc) REFERENCES ACCOUNT(Id_acc)
);
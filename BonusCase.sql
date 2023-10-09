-- Client data will be stored hereCREATE TABLE OC_Chores (
    CustomerID      INTEGER,
    FirstName       VARCHAR(30),
    LastName        VARCHAR(30),
    HomeAddress     VARCHAR(50),
    CityName        VARCHAR(20),
    ZipCode         INTEGER(5),
    PhoneNumber     CHAR(11),           -- no parentheses; format would be like '123-456-7890'
    CONSTRAINT OC_Chores_PK PRIMARY KEY(CustomerID),

);

-- Data in this table pertains to the subscription plans Maddie's clients are subscribed to
CREATE TABLE Plans (
    PlanID          INTEGER,
    CustomerID      INTEGER,
    ServiceType     VARCHAR(20),        -- length is however long the longest named chore is; maybe it's 'grocery shopping'?
    Price           FLOAT(5,2),         -- safe to assume the largest price would be in the hundreds? for an annual plan maybe?
    Plan_Interval   INTEGER,          -- maybe 1 for monthly, 2 for annual, and 3 for free trial? or maybe we could make this text?
    CONSTRAINT Plans_FK FOREIGN KEY(CustomerID)
                        REFERENCES OC_Chores(CustomerID),

);

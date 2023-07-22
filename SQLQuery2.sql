CREATE TABLE [Members] (
	Member_ID integer NOT NULL,
	Member_Name varchar(255) NOT NULL,
	Member_Age integer NOT NULL,
	Member_gender varchar(255) NOT NULL,
	Member_email_addresss varchar(255) NOT NULL,
	Member_contact_number varchar(255) NOT NULL,
	Member_CNIC varchar(255) NOT NULL,
	Project_Working_on integer NOT NULL,
	Member_address varchar(255) NOT NULL,
	Date_of_joining date NOT NULL,
  CONSTRAINT [PK_MEMBERS] PRIMARY KEY CLUSTERED
  (
  [Member_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Donation_by_members] (
	Month integer NOT NULL,
	Member_id integer NOT NULL,
	Donation_amount integer NOT NULL,
  CONSTRAINT [PK_DONATION_BY_MEMBERS] PRIMARY KEY CLUSTERED
  (
  [Month] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [External_donations] (
	Month integer NOT NULL,
	Doner_id integer NOT NULL,
	Amount integer NOT NULL,
	Date date NOT NULL,
  CONSTRAINT [PK_EXTERNAL_DONATIONS] PRIMARY KEY CLUSTERED
  (
  [Month] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Doner_details] (
	Doner_ID integer NOT NULL,
	Doner_name varchar(255) NOT NULL,
	Doner_age integer NOT NULL,
	Doner_CNIC varchar(255) NOT NULL,
	Doner_Gender varchar(255) NOT NULL,
	Doner_Contact_number varchar(255) NOT NULL,
  CONSTRAINT [PK_DONER_DETAILS] PRIMARY KEY CLUSTERED
  (
  [Doner_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Projects] (
	Project_ID integer NOT NULL,
	Project_Name varchar(255) NOT NULL,
	Starting_date date NOT NULL,
	Ending_date date NOT NULL,
	Project_budget integer NOT NULL,
	Project_head integer NOT NULL,
  CONSTRAINT [PK_PROJECTS] PRIMARY KEY CLUSTERED
  (
  [Project_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Collection_by_areas] (
	Collector_ID integer NOT NULL,
	Month integer NOT NULL,
	Amount integer NOT NULL,
	Area_ID integer NOT NULL,
	Area_Name integer NOT NULL,
  CONSTRAINT [PK_COLLECTION_BY_AREAS] PRIMARY KEY CLUSTERED
  (
  [Collector_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Extra_expenses] (
	Expense_ID integer NOT NULL,
	Expense_on_item varchar(255) NOT NULL,
	Expense_amount integer NOT NULL,
	project_id integer,
	expense_category integer,
  CONSTRAINT [PK_EXTRA_EXPENSES] PRIMARY KEY CLUSTERED
  (
  [Expense_ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Roles] (
	Member_who_is_admin integer NOT NULL,
	Can_view_database bit NOT NULL,
	Can_add_member_in_projects bit NOT NULL,
	can_view_budget bit NOT NULL,
	Can_view_area_collection bit NOT NULL,
	can_add_members_in_the_organization bit NOT NULL,
	can_view_individaul_collection bit NOT NULL,
  CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED
  (
  [Member_who_is_admin] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Projects_working_on] (
	Members integer NOT NULL,
	Project_id integer NOT NULL,
  CONSTRAINT [PK_PROJECTS_WORKING_ON] PRIMARY KEY CLUSTERED
  (
  [Members] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [categories_of_expense] (
	Expense_on varchar(255) NOT NULL,
	expense_category integer NOT NULL,
  CONSTRAINT [PK_CATEGORIES_OF_EXPENSE] PRIMARY KEY CLUSTERED
  (
  [expense_category] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Members] WITH CHECK ADD CONSTRAINT [Members_fk0] FOREIGN KEY ([Project_Working_on]) REFERENCES [Projects]([Project_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Members] CHECK CONSTRAINT [Members_fk0]
GO

ALTER TABLE [Donation_by_members] WITH CHECK ADD CONSTRAINT [Donation_by_members_fk0] FOREIGN KEY ([Member_id]) REFERENCES [Members]([Member_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Donation_by_members] CHECK CONSTRAINT [Donation_by_members_fk0]
GO

ALTER TABLE [External_donations] WITH CHECK ADD CONSTRAINT [External_donations_fk0] FOREIGN KEY ([Doner_id]) REFERENCES [Doner_details]([Doner_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [External_donations] CHECK CONSTRAINT [External_donations_fk0]
GO


ALTER TABLE [Projects] WITH CHECK ADD CONSTRAINT [Projects_fk0] FOREIGN KEY ([Project_head]) REFERENCES [Members]([Member_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Projects] CHECK CONSTRAINT [Projects_fk0]
GO

ALTER TABLE [Collection_by_areas] WITH CHECK ADD CONSTRAINT [Collection_by_areas_fk0] FOREIGN KEY ([Collector_ID]) REFERENCES [Members]([Member_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Collection_by_areas] CHECK CONSTRAINT [Collection_by_areas_fk0]
GO

ALTER TABLE [Extra_expenses] WITH CHECK ADD CONSTRAINT [Extra_expenses_fk0] FOREIGN KEY ([project_id]) REFERENCES [Projects]([Project_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Extra_expenses] CHECK CONSTRAINT [Extra_expenses_fk0]
GO
ALTER TABLE [Extra_expenses] WITH CHECK ADD CONSTRAINT [Extra_expenses_fk1] FOREIGN KEY ([expense_category]) REFERENCES [categories_of_expense]([expense_category])
ON UPDATE CASCADE
GO
ALTER TABLE [Extra_expenses] CHECK CONSTRAINT [Extra_expenses_fk1]
GO

ALTER TABLE [Roles] WITH CHECK ADD CONSTRAINT [Roles_fk0] FOREIGN KEY ([Member_who_is_admin]) REFERENCES [Members]([Member_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Roles] CHECK CONSTRAINT [Roles_fk0]
GO

ALTER TABLE [Projects_working_on] WITH CHECK ADD CONSTRAINT [Projects_working_on_fk0] FOREIGN KEY ([Members]) REFERENCES [Members]([Member_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Projects_working_on] CHECK CONSTRAINT [Projects_working_on_fk0]
GO
ALTER TABLE [Projects_working_on] WITH CHECK ADD CONSTRAINT [Projects_working_on_fk1] FOREIGN KEY ([Project_id]) REFERENCES [Projects]([Project_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Projects_working_on] CHECK CONSTRAINT [Projects_working_on_fk1]
GO


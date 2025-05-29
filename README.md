# **Task: Exploring SQL Server Backup Types**

## **Part 1: Research Task**

**1. Full Backup:**

- When it is used:
  - A full backup is used to create a complete copy of the entire database, including all data, objects, and transaction logs. It is typically performed at regular intervals to ensure that a complete snapshot of the database is available.
- What it includes?
  - A full backup includes all data files, system metadata, and transaction logs. It captures the entire state of the database at the time of the backup.
- Pros & cons?
  - Pros:
	- Provides a complete snapshot of the database.
	- Can be used to restore the database to a specific point in time.
	- Simplifies recovery processes.
  - Cons:
	- Takes longer to perform compared to other backup types.
	- Requires more storage space.
	- May impact database performance during the backup process.
- Real-world scenario?
  - In a banking system, a full backup is performed daily to ensure that all transactions and account information are securely stored. This allows for quick recovery in case of data loss or corruption.

**2. Differential Backup:**

- When it is used:
  - A differential backup is used to capture only the changes made to the database since the last full backup. It is typically performed more frequently than full backups to minimize data loss.
- What it includes?
  - A differential backup includes all data that has changed since the last full backup. It does not include data that has not changed.
- Pros & cons?
  - Pros:
	- Faster to perform than full backups.
	- Requires less storage space compared to full backups.
	- Allows for quicker recovery since only changes since the last full backup are captured.
  - Cons:
	- Still requires a full backup to restore the database.
	- If multiple differential backups are taken, restoring can be more complex.
- Real-world scenario?
  - In a content management system, a differential backup is performed every hour to capture changes made to articles and user comments. This allows for quick recovery of recent changes without needing to restore the entire database.


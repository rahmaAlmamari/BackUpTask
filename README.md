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

**3. Transaction Log Backup:**

- When it is used:
  - A transaction log backup is used to capture all transactions that have occurred in the database since the last transaction log backup. It is typically performed frequently to minimize data loss.
- What it includes?
  - A transaction log backup includes all transaction log records that have been generated since the last transaction log backup. It captures all changes made to the database.
- Pros & cons?
  - Pros:
	- Allows for point-in-time recovery of the database.
	- Requires less storage space compared to full backups.
	- Can be performed frequently without impacting performance significantly.
  - Cons:
	- Requires a full backup and possibly differential backups to restore the database completely.
	- If transaction logs are not managed properly, they can grow large and consume significant storage space.
- Real-world scenario?
  - In an e-commerce application, transaction log backups are performed every 15 minutes to capture all customer transactions and order updates. This ensures that the system can recover to the most recent state in case of a failure.
	

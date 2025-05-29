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

**4. Copy-Only Backup:** 

- When it is used:
  - A copy-only backup is used when a backup needs to be taken without affecting the sequence of regular backups. It is often used for ad-hoc backups or testing purposes.
- What it includes?
  - A copy-only backup includes all data files and transaction logs, similar to a full backup, but it does not affect the backup chain or sequence.
- Pros & cons?
  - Pros:
	- Does not interfere with the regular backup schedule.
	- Useful for testing or ad-hoc backups without affecting the backup chain.
	- Can be used to create a backup for a specific purpose without impacting recovery processes.
  - Cons:
	- Cannot be used for regular backups as it does not maintain the backup chain.
	- May lead to confusion if not properly documented.
- Real-world scenario?
  - In a development environment, a copy-only backup is taken before testing a new feature to ensure that the current state of the database can be restored if needed. This allows developers to experiment without affecting the production backup schedule.
	
**5. File/Filegroup Backup:**

- When it is used:
  - A file/filegroup backup is used when only specific files or filegroups within a database need to be backed up. This is useful for large databases where only a portion of the data has changed.
- What it includes?
  - A file/filegroup backup includes only the specified files or filegroups, rather than the entire database. It captures the state of those specific components.
- Pros & cons?
  - Pros:
	- Allows for targeted backups of specific data components.
	- Can reduce backup time and storage requirements for large databases.
	- Useful for databases with large filegroups that do not change frequently.
  - Cons:
	- More complex to manage and restore compared to full backups.
	- Requires careful planning to ensure all necessary components are backed up.
- Real-world scenario?
  - In a data warehousing environment, a file/filegroup backup is performed on a specific filegroup that contains historical data, allowing for faster backups and restores of frequently accessed data without impacting the entire database.


	

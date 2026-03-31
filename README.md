📦 Open Source Audit Project

👨‍🎓 Student Details

Name: Aditya Raj Singh

Course: Open Source Software

🧩 Project Overview

This project is designed to explore and analyze open-source systems using shell scripting. It demonstrates practical interaction with Linux environments and auditing tools focused on system information, software inspection, permissions, and log analysis.

The project uses Git as the primary open-source software for inspection and validation.

🛠️ Chosen Software
Git (Distributed Version Control System)

Git is a widely used open-source version control system that helps developers track changes, collaborate efficiently, and manage codebases in a distributed manner.

📜 Scripts Description
🔹 Script 1 – System Identity Report

This script gathers and displays essential system information:

Kernel version
Logged-in user
System uptime
Operating system details

👉 Helps in understanding the system environment before performing audits.

🔹 Script 2 – FOSS Package Inspector

This script checks whether Git is installed on the system and provides:

Installed version of Git
Package details
Verification of installation

👉 Useful for validating open-source software availability.

🔹 Script 3 – Disk and Permission Auditor

This script analyzes:

Important system directories
File permissions
Git configuration file permissions

👉 Ensures security and correct access control settings.

🔹 Script 4 – Log File Analyzer

This script processes log files and:

Counts occurrences of specific keywords
Displays recent matching entries

👉 Helps in identifying system events, errors, or security issues.

🔹 Script 5 – Open Source Manifesto Generator

This script generates a personalized statement reflecting:

Open-source philosophy
User-defined inputs

👉 Encourages understanding of open-source values and principles.

▶️ How to Run
Step 1: Make Scripts Executable
chmod +x script*.sh

Step 2: Execute Scripts
./script1.sh
./script2.sh git
./script3.sh
sudo ./script4.sh /var/log/auth.log fail
./script5.sh

⚙️ Requirements
Operating System: Linux (Ubuntu recommended)
Bash Shell
Git installed on the system

🎯 Learning Outcomes
Understanding of open-source tools and philosophy
Hands-on experience with shell scripting
Knowledge of system auditing techniques
Familiarity with Linux file systems and permissions
Log analysis and debugging skills

📌 Conclusion

This project demonstrates how shell scripting can be effectively used to audit and analyze open-source systems. It provides practical exposure to real-world system administration and open-source workflows.

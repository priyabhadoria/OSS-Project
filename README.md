# The Open Source Audit: Git
A Capstone Project for the OSS Course.

## Student Information
- **Name:** Priya Bhadoria  
- **Course:** Open Source Software (OSS)  
- **Software Chosen:** Git  

## Project Overview
This repository contains a structured audit of **Git**, a distributed version control system originally created by Linus Torvalds. Git was chosen for its major role in modern software development, its open-source philosophy under the GNU General Public License (GPL) v2.0, and its ability to support collaborative and distributed workflows.

## Contents
1. **OSS Audit Report (PDF):** A detailed analysis of Git’s origin, licensing (GPL v2), and its role in the open-source ecosystem.  
2. **Shell Scripts:** Five practical Linux scripts demonstrating essential command-line and automation skills.

## Shell Scripts Description

### 1. System Identity Report (`script1.sh`)
Displays key system information such as kernel version, distribution, uptime, and user details along with the selected software.

### 2. FOSS Package Inspector (`script2.sh`)
Checks whether Git (or other packages) is installed using the package manager, shows version and license details, and prints a short description using a `case` statement.

### 3. Disk and Permission Auditor (`script3.sh`)
Loops through important system directories to display disk usage, permissions, and ownership details. Also checks for Git configuration files.

### 4. Log File Analyzer (`script4.sh`)
Reads a log file line by line, counts occurrences of a keyword (e.g., "error"), and displays a summary along with the last few matching entries.

### 5. Open Source Manifesto Generator (`script5.sh`)
An interactive script that collects user input and generates a personalized open-source manifesto saved as a text file.

## How to Run the Scripts
1. **Clone the repository:**
   ```bash
   git clone [your-repo-url]
   cd [repo-name]
   ```

2. **Make the scripts executable:**
   ```bash
   chmod +x *.sh
   ```

3. **Execute a script:**
   ```bash
   ./script1.sh
   ```

---

## Closing Note
This project highlights that open source is not just about writing code, but also about collaboration, transparency, and shared growth. Git stands as a strong example of how an open-source tool can transform the way software is developed and maintained across the world.

---

*Note: These scripts are designed for a Linux environment.*

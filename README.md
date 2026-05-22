# 🖥️ System Health Monitor (Linux Automation Project)

A lightweight Linux-based system monitoring tool that tracks CPU, Memory, and Disk usage, logs system health, and generates periodic reports using Bash scripting and cron automation.

---

## 🚀 Features

- 📊 Real-time CPU, Memory, Disk monitoring  
- 📝 Automatic logging of system health  
- 📄 Daily/periodic report generation  
- ⏱️ Cron-based automation support  
- 🧠 Lightweight Bash-based solution (no external dependencies)

---

## 📁 Project Structure

system-health-monitor/
│
├── scripts/
│ ├── monitor.sh # Collects system metrics
│ ├── report.sh # Generates summary report
│
├── logs/
│ ├── system.log # Stores system metrics
│ ├── report.log # Stores reports
│
└── README.md


---

## ⚙️ Installation & Setup

### 1. Clone the repository
```bash
git clone https://github.com/<your-username>/system-health-monitor.git
cd system-health-monitor
2. Give execute permissions
chmod +x scripts/monitor.sh
chmod +x scripts/report.sh
▶️ Usage
Run system monitor manually:
bash scripts/monitor.sh
Generate report:
bash scripts/report.sh
⏱️ Automation with Cron

Run monitor every 1 minute:

crontab -e

Add:

* * * * * /bin/bash /root/system-health-monitor/scripts/monitor.sh
📊 Sample Output
CPU: 12% MEM: 35% DISK: 40%

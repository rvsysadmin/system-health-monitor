#!/bin/bash

LOG_FILE="../logs/system.log"
REPORT_FILE="../logs/report.log"

echo "===== SYSTEM HEALTH REPORT =====" > $REPORT_FILE
echo "Generated at: $(date)" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "Top 5 Recent Entries:" >> $REPORT_FILE
tail -5 $LOG_FILE >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Report generated successfully."

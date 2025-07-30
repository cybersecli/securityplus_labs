# Lab 2: Log Monitoring with Event Viewer

## Objective
Demonstrate the ability to monitor and analyze Windows security logs using the built-in Event Viewer utility.

## Tools Used
- Event Viewer (`eventvwr.msc`)

## Skills Demonstrated
- Log filtering and event ID analysis
- Recognition of suspicious logon activity
- Understanding of audit policies and security logging
- Exporting `.evtx` files for further analysis or incident response

## Lab Steps
1. Opened **Event Viewer** and navigated to `Windows Logs > Security`.
2. Applied filters to view events relevant to security monitoring:
   - **Event IDs**:
     - `4624` – Successful logon
     - `4625` – Failed logon
     - `4672` – Special privileges assigned
     - `4688` – Process creation
   - **Time filter**: Events from the last 24 hours
   - **Levels**: Information, Warning, Error
3. Analyzed details such as:
   - User accounts involved
   - Logon types (e.g., remote, local, batch)
   - Source IP addresses (if available)
4. Exported the filtered log set to `filtered-security-events.evtx`.

## Takeaways
- Identified patterns that could suggest brute-force attempts, privilege escalation, or abnormal logon behavior.
- Demonstrated knowledge of how to isolate relevant logs from thousands of entries.
- Gained practical experience in handling `.evtx` files for documentation or investigation purposes.

## Sample Output
A sample log export is included in this folder: 📁 filtered-security-events.evtx

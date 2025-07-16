#!/bin/bash

declare -A titles=(
  ["01-access-control"]="Access Control"
  ["02-network-security"]="Network Security"
  ["03-identity-and-authentication"]="Identity & Authentication"
  ["04-threat-detection"]="Threat Detection"
  ["05-incident-response"]="Incident Response"
  ["06-cryptography"]="Cryptography"
  ["07-physical-security"]="Physical Security"
  ["08-logging-and-monitoring"]="Logging & Monitoring"
  ["09-wireless-security"]="Wireless Security"
  ["10-security-tools"]="Security Tools"
)

declare -A domains=(
  ["01-access-control"]="Architecture & Design"
  ["02-network-security"]="Architecture & Design"
  ["03-identity-and-authentication"]="Architecture & Design"
  ["04-threat-detection"]="Threats and Vulnerabilities"
  ["05-incident-response"]="Incident Response"
  ["06-cryptography"]="Cryptography and PKI"
  ["07-physical-security"]="Architecture & Design"
  ["08-logging-and-monitoring"]="Security Operations"
  ["09-wireless-security"]="Architecture & Design"
  ["10-security-tools"]="Tools and Technologies"
)

for folder in "${!titles[@]}"; do
  cat > "$folder/overview.md" <<EOF
# ${titles[$folder]}

🧪 **Security+ Domain:** ${domains[$folder]}  
📅 **Date Completed:** [MM/DD/YYYY]  
🛠️ **Tools Used:** [e.g., Wireshark, tcpdump, Kali Linux, Windows Event Viewer, etc.]

---

## 🔍 Objective

Briefly explain what this lab was designed to demonstrate or test.

_Example:_  
This lab explores the topic of ${titles[$folder]} within the ${domains[$folder]} domain, using practical tools and scenarios.

---

## 🛠️ Steps Taken

1. [Step 1: Describe what you set up or did]  
2. [Step 2: What tests or tools you used]  
3. [Step 3: What data you analyzed or actions you observed]

---

## 📸 Screenshots / Evidence

Add screenshots or command output here.

\`\`\`
Paste code or logs here.
\`\`\`

---

## 🧠 What I Learned

Summarize key takeaways:

- Concepts reinforced  
- Tools mastered  
- Challenges faced and resolutions

---

## 📌 Keywords

\`Security+\` \`${titles[$folder]}\` \`${domains[$folder]}\`

---
EOF
done

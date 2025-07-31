
# Lab 03 – Network Scanning with Nmap

## Objective
The objective of this lab is to perform basic network scanning using Nmap to identify open ports and services running on a local Windows machine. This helps in understanding how attackers might discover network vulnerabilities.

## Tools Used
- Nmap (Network Mapper)
- Git Bash (Command Line Interface)
- Windows `ipconfig` command

## Commands Executed

```bash
ipconfig
nmap -sV 192.168.1.82
````

## Findings

During the scan of my local IP address (`192.168.1.82`), Nmap detected the following open ports and associated services:

| Port     | Protocol | Service      | Description                                     |
| -------- | -------- | ------------ | ----------------------------------------------- |
| 135/tcp  | TCP      | msrpc        | Microsoft Windows Remote Procedure Call         |
| 139/tcp  | TCP      | netbios-ssn  | Microsoft Windows NetBIOS Session Service       |
| 445/tcp  | TCP      | microsoft-ds | Microsoft Directory Services (SMB file sharing) |
| 5357/tcp | TCP      | http         | Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)         |

The host responded quickly indicating it is up on the network. These open ports are common on Windows systems and are typically used for file sharing, network communication, and device discovery.

## Security Considerations

* Ports 135, 139, and 445 are associated with Windows networking services that have historically been targeted for exploits (e.g., SMB vulnerabilities).
* It is important to keep the system patched and ensure the firewall restricts access to these ports from untrusted networks.
* Port 5357 relates to UPnP and web services which can expose additional attack surface if misconfigured.

## Evidence

A screenshot of the terminal output showing the results of the `ipconfig` and `nmap` commands is saved in the `screenshots/` folder as `nmap-results.png`.

## Reflection

This lab helped me understand how network scanning tools like Nmap can be used for reconnaissance by attackers to find potential vulnerabilities. It reinforced the importance of securing network services and monitoring open ports to protect systems from unauthorized access.


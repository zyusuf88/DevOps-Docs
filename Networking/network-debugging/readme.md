# Network Debugging Tools: `nslookup` and `dig`

This section covers basic usage of network debugging tools like `nslookup` and `dig`. These tools help in querying DNS to get details like IP addresses and name servers associated with a domain.

## `nslookup`

`nslookup` is a command-line tool used to query the Domain Name System (DNS) to obtain domain name or IP address mapping.

**Example:**

```bash
nslookup google.com
```
![nslookup google.com](/Networking/network-debugging/nslookup.png)

- Server: This is the DNS server used for the query in this case, Google’s DNS at `8.8.8.8`.
- Non-authoritative answer: This means the response came from a **cache** and not directly from an authoritative **DNS server**.
- Address: This is the resolved IP address of the queried domain google.com in this case, resolved to `142.250.200.46`.

## Common Scenarios for Using nslookup:
- **Check DNS resolution:** You can use nslookup to confirm that DNS is resolving a domain correctly.
- **Verify DNS server:** It also shows which DNS server is responding to your request.




## dig - domain information groper

dig is another DNS querying tool that provides more detailed output and is useful for advanced DNS troubleshooting.

`dig google.com`

![alt text](/Networking/network-debugging/diggoogle.com.png)
- **ANSWER SECTION:** This contains the IP address (A record) associated with the domain.
- **Query time:** Time taken to receive the DNS query result.
- **SERVER:** The DNS server used for this query (Google’s DNS in this example).


---

- `dig +short google.com`: This command provides only the IP address of the domain in a concise format, skipping the detailed DNS output.
  
- `dig +short ns google.com`: This command returns the name servers (NS records) for the domain in a short format, showing only the server names responsible for DNS resolution.

--- 


Both `nslookup` and `dig` are powerful tools for checking DNS records and troubleshooting domain resolution issues. Use nslookup for simple queries and dig for more detailed, advanced queries.
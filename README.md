# UFW allow CloudFlare IP's
This bash script will add in the up-to-date CloudFlare IPv4 and IPv6 addresses to UFW on port 443.

## Background
I use CloudFlare for every single website that I personally run. So, I want to make sure that only the required traffic is allowed to flow to/from my servers. All of my websites redirect from HTTP (80) to HTTPS (443) at the CloudFlare level before the request even hits the server so all I need to allow is port 443 on the specific IP's to CloudFlare meaning the traffic between the client and CloudFlare then CloudFlare to the origin is encrypted at all times.

## Setup
`git clone https://github.com/chrislange/ufw-cloudflare-ips.git`
`cd ufw-cloudflare-ips`
`bash setup.sh`

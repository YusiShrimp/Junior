##### Lecture 1

- Computer network
- Distributed system
- Client-Server model
- Peer-to-Peer Communication
  - BitTorrent
- point-to-point link
- Broadcast links
- PAN（Personal）
- LAN（Local）
- MAN（Metropolitan）
- WAN（Wide）
- Internet（network of all networks）
- RFID
- ISP
- Gateway
- Subnet
- network
- NFC
- protocol
- To reduce their design complexity, most networks  are organized as a stack of layers
- The purpose of each layer is to offer certain  services to the higher layers
- Connection-oriented
- Connectionless
- Reliable Service
- Unreliable Service
- OSI
- TCP/IP



##### Lecture 2

- twisted pairs
- fiber
- electromagnetic wave
- Nyquist 
- Shannon
  - SNR: Signal-to-noise ratio 信噪比
- modulation
  - baseband
    - NRZ: non-return-to-zero
    - Manchester
    - NRZI
  - passband
    - ASK
    - TSK
    - PSK
- Multiplexing 多路复用
  - FDM （Time Division Multiplexing）时分多址
  - TDM （Frequency Division Multiplexing）频分多址
  - CDMA （Code Division Multiplexing）码分多址
- PSTN 
  - Local loop
  - modem （modulator demodulator）
- ISM band



##### Lecture 3

- Hamming distance
- Parity
- CRC
- ARQ
- Sliding windows protocol
  - piggybacking
  - Go-back-N
  - Selective repeat



##### Lecture 4

- LLC（Logical link control）
- MAC（medium access control）
- Broadcast channel（multi-access channel / random access channel）
- ALOHA
  - pure
  - slotted
- CSMA（Carrier sense multiple access）载波监听多路访问
  - 1-persistent
  - Nonpersistent
  - p-persistent
  - CSMA/CD （collision detection）
- Ethernet 
  - DIX
  - IEEE 802.3
  - MTU （maximum transmission unit）
  - PDU （protocol data unit）
  - BEB （binary exponential backoff） 二进制指数后退



##### Lecture 5

- WLAN

  - Infrastructure Mode

    - AP（access point）

  - Ad Hoc Mode

  - SSID（Service Set Identifier 1~32 bytes）

  - Q1: How does your wireless host join a network

    - Passive scanning
      - Beacon frame 信标帧
    - active scanning
      - probe request 探测请求帧
      - probe response 探测响应帧
  - Q2: After your mobile phone is connected  to the WiFi, how to transmit frames?
    - CSMA/CA （collision avoidance）
    - MACA （multiple access collision avoidance）
      - RTS（request to send）
      - CTS（clear to send
  - VLAN



##### Lecture 6

- datagram
- virtual circuit
- IP
  - ICMP: Internet Control Messages  Protocol
  - ARP: Address Resolution Protocol
  - Checksum（1's complement）
  - DF 1bit (设置成1 就是不让分割)
  - MF 1bit
  - Fragment Offset 13bit
- IPv4
  - Packet

- IPv6



##### Lecture 7

- ICMP（**Internet Control Message Protocol**）
- ARP（**Address Resolution Protocol，地址解析协议**）
- DHCP（**Dynamic Host Configuration Protocol，动态主机配置协议**）



##### Lecture 8

- Forwarding process
- routing process
- Distance vector
- Link state
  - LSR （link state routing）
  - LSP（link state packet）
- IGP （Interior gateway protocol）
- EGP（exterior gateway protocol）
- OSPF（Open shortest path firsts）
- BGP （border gateway protocol）



##### Lecture 9

- UDP 无连接型 （user datagram protocol）
- TCP 面向连接 （transmission control protocol）
  - sliding windows protocol
  - congestion and flow control
  - fit MTU to avoid segmentation
  - socket（ip address and port number）
  - CWR（Congestion Window Reduced）：用于ECN（Explicit Congestion Notification）的拥塞控制。
  - ECE（ECN-Echo）：用于ECN的拥塞控制。
  - URG（Urgent）：指示存在紧急数据。
  - ACK（Acknowledgment）：确认字段有效。
  - PSH（Push）：接收方应尽快将数据推送给应用程序。
  - RST（Reset）：重置连接。
  - SYN（Synchronize）：用于建立连接。
  - FIN（Finish）：用于终止连接。
  - MSS（maximum segment size）
  - ISN（initial sequence number）
- TPDU（transport protocol data unit）
- TSAP（transport service access point）
- MSL（maximum segment lifetime）



##### Lecture 11

- 



##### Lecture 12

- DNS: Domain name system
- TLDs: Top level domains
- RR: Resourse record



##### Lecture 13

- URL: uniform resource locator
- HTTP:  HyperText transfer protocol
- HTML: HypterText Markup language
- SMTP: simple mail transfer protocol
- IMAP: Internet message access protocol
- POP3: post office protocol, version 3

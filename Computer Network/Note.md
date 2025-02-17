#### Compute Network :computer:

---

##### Bg

- 课堂签到考勤
- 内容多 有意思 Prof Cui 很好
- Lab强度高 给分情况：加入绘图说明得到高分
- 文科 贝多芬学科
- 期中考开卷考试 提前做好准备

---



###### Chapter1:

- OCI Model (7 Layers)
- TCP/IP Model (Only 4 layers, easier than OSI model, earlier also)
  - Narrow waist 瘦腰模型/沙漏模型 (IP协议) 
- combined model (5 layers)
- Standardization



###### Chapter2: Physical layer

- guided/unguided 导向/非导向 （:arrow_down:导向）

- twisted pair 双绞线 (different kinds of categories, most common is cat.5/5e/6)
- theoretical basis of communication (2 theories)（理论最大数据传输数据   Hz--->bps）
  - Nyquist 奈奎斯特（定理+公式）
  - Shannon 香农（公式）



###### Chapter3: Data Link layer

- Elementary Data Link Protocol 基本数据链路层协议
- flow control
- few simple protocols（Stop and Wait引入）
- ==ARQ==（Automatic repeat request）添加了error control+flow control（==掌握==）（one-direction 单向传输）
- Two-way communication 双向传输
  - Sliding window protocol 滑动窗口协议（只用一个链路来实现）3-bit即可（0-7）
    - piggy back 捎带
    - pipeline strategy
    - Link utilization 链路使用率
    - Go back N （receive window 是 1）
    - Select Repeat（receive window > 1）
    - Non-sequential receiving problems 非顺序接收 （==重要==）
      - 公式：==w~s~+w~r~<=2^m^== and w~s~>=w~r~
    - Window size图标（==重要==）



###### Chapter4: Mac layer

- ALOHA
  - Pure
  - Slotted
  
- CSMA Protocol（Carrier Sense Multiple Access）
  - 1-persistent CSMA
  - nonpersistent
  - p-persistent
  
- 60年代末ALOHA

- 70年代提出以太网

- MAC地址 6字节 48位 （每个网卡一个MAC地址 理论上来说是独有一个）

- DIX 标准

- IEEE 802.3 标准

- CRC校验

- LLC head

- Collision detect的时间必须>=frame发送完成的时间

- Hub 集线器

- Switched Ethernet 交换式以太网（==重要==）
  - Switches 交换机 
  
- 以太网卡的工作原理

- Wireless LANs（WLAN）

  - Two Modes of WLAN
    - Infrastructure Mode
      - AP（access point ≈ base station）
    - Ad Hoc Mode
  - 隐藏终端 hidden terminals（==必考==）
  - 暴露终端 exposed terminals（==必考==）
  - DIFS
  - SIFS

- 3 switching rules

- VLAN
  - 有4个字节来表示组别type



##### Chapter5：Network layer

- ###### Design Issues

  - Store-and forward
  - Conectionless Service——datagrams
  - Connection-oriented——VC（virtual circuit）

- How network be connected

  - two basic ideas

- PMTU（path maximum transmission Unit）

- ICMP

- # **IPv4**
  
  - 20~60length
  - header （==非常熟悉==）
  - special IP address（==记住==）
    - src.id是什么???
  - checksum
  
- FLSM（210IP 10IP 解决不了 啥意思？？）

- VLSM（课堂没讲 可以看资料）

- incoming

- outgoing（==重要==）

  - 引入了default gateway（默认网关）

- CIDR

  - 路由聚合要会算（==考==）
  - 路由查表LPM（==考==）

- Network Address Translation

  - 3个private IP地址（==记住==）
  - private IP地址不能够上互联网 要用NAT技术
  - NAT（使用了TCP/UDP协议 使用16bit的端口号进行复用）（==理解并掌握==）NAT router 将端口号随机

- # **IPv6**

  - 了解地址 128bit
  - header相对于IPv4简单得多

- #### ICMP（网络维护 网络debug）

- Tracert

- IP and MAC address

- ARP：Address resolution protocol（实现网络通信）

- #### Internet Communication

  - Default gateway（默认网关）不同network之前通信就一定要通过
  - all 0s network destination/netmast 目的是可以匹配到任意一个IP地址


- #### DHCP

- Router design

  - CPU
  - Swithch chip（NPU/ASIC chip）
  
- Router algorithm


  - 距离矢量算法（==重要==）
  - Count to infinite 问题（==重要==）

    - 线性拓扑
    - 环路拓扑

  - RIP（routing information protocol）（用在小规模网络内）

    - 属于application layer应用层

  - Link State Routing 链路状态路由 （==重要==）
  - Hierarchical routing 
  - Broadcast Routing
  - Anycast Routing
  - IGP/BGP 内部/外部网关协议

    - 内部AS可以不同的IGP
    - 但是外部的AS必须采用相同的协议 也就是BGP相同

  - IGMP



##### Chapter 6： Transport layer

- Flow control（==重要==）
  - 定义:
  - 解决方法：发送方速率降低
  - 发生原因:
- Congestion control（==重要==）
  - 出现原因：
  - 解决方法：发送方速率降低
- UDP（User Datagram Protocol）
  - Quic and Quic
  - Length包含整个包的header和data
- TCP（Transmission Control Protocol）
  - byte stream 面向字节流
  - FLAG bit：SYN/FIN/ACK（==记==）
  - TCP Sliding Window
    - 解耦合
    - 小数据的发送or请求问题的解决（浪费带宽）
      - Nagle's algorithm
      - Clark's solution
  - queue,loss and congestion
    - AIMD:ensure the convergence (唯一)
- TCP：Congestion Window（==重要！！！！！==）
  - 使用bytes/使用segments的个数？？？
- TCP Tahoe Example
  - 重传timeout（ack clock失效）
  - Packet Loss（三次重复的ack）
- TCP Reno Example（==仅仅发生在3次ACK==）



##### Chapter 7: Application layer:handbag:最终章

- .io
- DNS：domain name system
- TLD：Top level domains
  - .com/.net/.org/.edu……
  - Generic Country
- SDN（==重要==）
  - 是什么（==1==）
  - Data plan 和 Control plan分别是什么（==1==）
  - openflow和p4大概知道是什么就可以

---

# Review

- CDMA 计算 √
- two types of switching（概念和对比）==√====√====√==
- error- correcting codes（hamming distance的了解）==√==
- Parity and checksum ==√==
- CRC code 的计算 ==√==
- 基本想法，windows size link utilization（三个protocols） ==√√==
- 三个版本 CSMA ==√==
- Ethernet 以太网（所有内容）==√==
- WLAN（只看ppt）==√==
  - 两个问题==√==
  - protocol used in wifi==√==
- Routing procedure and Backward leaning algorithm……==√==
- spanning tree（为什么需要这个）==√==
- VLAN（为什么需要这个，4bytes tag additional）==√==
- routing algorithms==√==
  - Distance==√==
  - link state==√==
- IPv4==√==
  - header fragmentation……
- UDP ==√==
- TCP（所有concepts）
  - CUBIC（基本概念）
- SDN==√==
  - 是什么（==1==）
  - Data plan 和 Control plan分别是什么（==1==）
  - openflow和p4大概知道是什么就可以==√==
  - major solutions of SDN today==√==

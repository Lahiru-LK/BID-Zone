
# 🏆 BidZone - Auction Platform

### 🎯 Project Overview
BidZone is an **advanced auction platform** developed using **Java**. This platform allows users to buy and sell products through an auction-based system with real-time bidding functionalities. It ensures a seamless and secure bidding experience with multiple features designed for **buyers, sellers, and administrators**.



https://github.com/user-attachments/assets/e76ed027-6de2-4d9a-8f7e-e4ca4aba1db1

![image](https://github.com/user-attachments/assets/08fc9ccd-14fb-489b-8be3-56d4b3a69eb0)
![image](https://github.com/user-attachments/assets/b23969a4-59a5-48b0-a63b-87b07b7d801d)
![image](https://github.com/user-attachments/assets/cf1166c6-b391-429f-8627-56d6ecb2a180)
![image](https://github.com/user-attachments/assets/c1ea3c9d-03cb-43b9-8a8e-6eccbf9fd629)
![image](https://github.com/user-attachments/assets/6fed3763-e025-466e-8e69-28d34de4ee6a)


---

## 🚀 Features
### 👥 User Roles & Functionalities
- **👑 Administrator**
  - Manage users (buyers & sellers)
  - View daily reports (sales & disputes)
  - Solve disputes between buyers and sellers
- **🛒 Buyer**
  - Register and participate in auctions
  - Browse product listings
  - Place real-time bids on items
- **📦 Seller**
  - Register and list products for auction
  - Manage product listings
  - View sold item history

### 🛠️ Advanced Features
- **🖥️ Design Patterns**: Observer, Strategy
- **⚙️ Multithreading**: Handles multiple bidders simultaneously
- **📦 Object Serialization**: Saves and retrieves auction history
- **🔗 Remote Method Invocation (RMI)**: Enables remote bidding
- **📄 Object Relational Mapping (ORM)**: Uses Hibernate for seamless database integration
- **🛡️ Secure Transactions**: Ensures safe and verified bidding
- **📈 Real-time Updates**: Live tracking of auctions and bids

---

## 📂 Project Structure
```
📁 BidZone
│── 📂 src
│   │── 📂 main
│   │   │── 📂 java/com/bidzone
│   │   │   │── 📄 Main.java
│   │   │   │── 📄 Auction.java
│   │   │   │── 📄 Bid.java
│   │   │   │── 📄 User.java
│   │   │   │── 📄 Seller.java
│   │   │   │── 📄 Buyer.java
│   │   │   │── 📄 DatabaseConfig.java
│   │   │   │── 📄 RMIService.java
│   │── 📂 resources
│   │   │── 📄 config.properties
│── 📂 webapp
│   │── 📂 views
│   │   │── 📄 index.jsp
│   │   │── 📄 login.jsp
│   │   │── 📄 register.jsp
│   │   │── 📄 auction.jsp
│── 📂 database
│   │── 📄 bidzone.sql
│── 📂 docs
│   │── 📄 project_report.pdf
│── 📜 README.md
│── 📜 .gitignore
```

---

## 🔧 Technologies Used
| 🛠️ Tech Stack        | 📌 Usage |
|----------------------|----------|
| **Java (Advanced)** | Backend processing |
| **JSP & Servlets**  | Frontend UI |
| **Hibernate ORM**   | Database integration |
| **MySQL**           | Data storage |
| **Tomcat Server**   | Server deployment |
| **RMI**             | Remote bidding services |
| **Multithreading**  | Handles concurrent auctions |

---

## 🏗️ How to Set Up the Project
### 🔥 Prerequisites
- Java JDK (11+ recommended)
- Apache Tomcat
- MySQL Database
- IntelliJ IDEA / Eclipse

### 💻 Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/BidZone.git
   ```
2. Import the project into IntelliJ IDEA or Eclipse.
3. Configure the **database**:
   - Import `bidzone.sql` into MySQL.
   - Update `config.properties` with database credentials.
4. Run the project on **Tomcat Server**.
5. Open `http://localhost:8080/BidZone` in your browser.

---

## 🏆 Contributors
| 👨‍💻 Name | 🎓 Registration Number |
|----------|----------------------|
| G.W.M.D.Rupasinghe
| K.A.D.P.M.Siriwardhana 
| H.P.G.L.P. Jayathilake
| N.W.V.B.S.B.Weragoda 

---



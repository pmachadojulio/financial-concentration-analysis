# Financial Concentration Analysis

This project analyzes how dependent each payment channel is on a small number of customers.

Using real transaction data (simulated), it measures concentration, fragmentation and systemic risk across channels such as QR, POS and Bank Transfers.

The goal is to answer a simple but critical business question:

**Which channels are fragile because too much revenue depends on very few clients?**

---

## Business Context

In payment systems, concentration risk is dangerous.

If one or two large clients represent most of a channel’s volume, the loss of a single client can cause:
- cash flow disruption  
- operational risk  
- financial instability  

This project models that risk using quantitative indicators commonly used in finance and competition economics.

---

## Metrics Used

For each payment channel, we compute:

### 1. Client Market Share
How much of a channel’s total volume comes from each client.

### 2. Herfindahl–Hirschman Index (HHI)
Measures concentration:

- Low HHI → fragmented, healthy market  
- High HHI → dominated by few players  

HHI = sum of squared market shares.

### 3. Entropy
Measures fragmentation:

- High entropy → many clients with similar weight  
- Low entropy → few dominant clients  

---

## Method

The analysis is performed in three logical layers:

### Layer 1 — Client Participation
Aggregate transactions by:
- client  
- channel  

Then compute each client’s share of the channel.

### Layer 2 — Channel Structure
Using client shares, compute:
- HHI  
- Entropy  

for each channel.

### Layer 3 — Risk Join
Join both layers to identify:
- which clients dominate  
- in which channels  
- and how risky each channel is  

---

## Files
/data
conciliacion_bancaria_sample1.csv # Simulated transaction data

/sql
01_participaciones.sql # Client shares per channel
02_diagnostico_canal.sql # HHI and entropy per channel
03_join_riesgo.sql # Final risk view

---

## Why this matters

This type of analysis is used in:
- financial auditing  
- fraud detection  
- payment system risk  
- competition and antitrust analysis  

The same logic applies to hospitals, banks, insurance companies, and marketplaces.


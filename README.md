# 📊 Current Progress (11/18)

### Scope Completed
As of now, I have implemented the following:
- **Products and Add-Ons**: Core products and add-ons have been created with pricing details.
- **Product Bundling**: The GitHub Enterprise Suite bundle has been configured with constraints.

### Record Data

- [Products JSON](./data/Product2.json)
- [Product Options JSON](./data/Product2.json)
- [PriceBooks Entries JSON](./data/PricebookEntry.json)

**Note**: These files are not directly importable into another org because they contain unique record IDs tied to the source org. They are intended to showcase the structure and relationships between objects.

### What's Next
- (currently) Implementing dynamic pricing rules for volume and bundled discounts.
- Approval processes for discount thresholds and high-value quotes.
- Custom quote templates.

---

# 📽️ Demo Video

*(Coming soon)*

---

## 🚀 Key Features

### 1. Products and Add-Ons

#### Core Products:
- **GitHub Pro**: $4/user/month.
- **GitHub Team**: $4/user/month.
- **GitHub Enterprise**: $2,000/month.

#### Add-Ons:
- **GitHub Codespaces**: $40/user/month.
- **GitHub Copilot**: $10/user/month.
- **GitHub Advanced Security**: $49/user/month.
- **GitHub Premium Support**: $2,000/month.

---

### 2. Product Bundling

#### GitHub Enterprise Suite:
- **Parent Product**: GitHub Enterprise.
- **Child Products**:
  - Codespaces
  - Advanced Security
  - Premium Support

#### Constraints:
- Selecting **"Premium Support"** automatically includes **"Advanced Security."**

---

### 3. Pricing Rules

#### Volume Discounts:
- **500+ users**: 10% discount.
- **1,000+ users**: 20% discount.

#### Bundled Discounts:
- Purchasing **"Premium Support"** and **"Advanced Security"** together applies a **$500/month discount**.

#### Add-On Discount:
- Selecting **20+ Codespaces** triggers a **10% discount**.

---

### 4. Approval Processes

#### Discount Threshold:
- Discounts > 20% require **Sales Manager approval (me)**.

#### High-Value Quotes:
- Quotes exceeding **$100,000/year** require **VP approval (also me)**.

---

### 5. Quote Templates

#### Custom PDF Quotes:
- Includes product breakdowns.
- Automatically applies pricing rules and terms.

---

## 🛠️ Implementation Details

### Metadata Configuration

- **Objects**: Products, Price Books, Quotes, Pricing Rules, Approval Rules.
- **Automation**: Price rules and approval workflows.
- **UI Customization**: Quote templates.

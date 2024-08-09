## Germany - Retail Sector - Data Analytics Engineer Position 

## Steps: 

### Step 1: HR Call Interview
### Step 2: Hiring Manager Technical Interview

### Step 3:
* 60 mins coding
* 60 mins system design
* 60 mins stakeholder

Step 1. Talk general questions about the position.

## Step 2.


### 1. Explain AWS S3.

### 2. Describe the architecture of PySpark.

### 3. Python and SQL Problem-Solving
### Python: Palindrome Checker and SQL Problem-Solving
```python
def palindrome(text: str) -> bool:
    # Remove spaces and convert to lowercase for case-insensitive comparison
    clean_text = text.replace(" ", "").lower()

    # Check if the cleaned text is the same forwards and backwards
    return clean_text == clean_text[::-1]

# Verification part
print(palindrome("anna"))               # True
print(palindrome("bananas"))            # False
print(palindrome("abcdefgfedcba"))      # True
print(palindrome("abcddcbe"))           # False

### SQL 

```sql

CREATE TABLE offprice_item_bid_price AS
SELECT 1 AS item_id, 'John' AS name, 20 AS price FROM dual UNION ALL
SELECT 1 AS item_id, 'Ken' AS name, 12 AS price FROM dual UNION ALL
SELECT 1 AS item_id, 'Silvia' AS name, 25 AS price FROM dual UNION ALL
SELECT 2 AS item_id, 'Eric' AS name, 75 AS price FROM dual UNION ALL
SELECT 2 AS item_id, 'Adam' AS name, 20 AS price FROM dual UNION ALL
SELECT 2 AS item_id, 'Karen' AS name, 23 AS price FROM dual UNION ALL
SELECT 3 AS item_id, 'Sean' AS name, 35 AS price FROM dual;







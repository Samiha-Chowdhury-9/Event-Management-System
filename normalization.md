# Normalization

## 1. Attend

### Attributes

`USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`, `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`

### First Normal Form 1NF

`U_MOBILE` and `USER_EMAIL` are multiple attributes.

Relation in 1NF:

1. `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`, `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`

### Second Normal Form 2NF

The relation is divided into:

1. `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`
2. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`

### Third Normal Form 3NF

There is no transitive dependency.

Final relations:

1. `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`
2. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`

### Table Creation

1. `USER` - `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`
2. `EVENT` - `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `USER_ID`

---

## 2. Takes Place

### Attributes

`EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `VENUE_ID`, `V_NAME`, `CAPACITY`

### First Normal Form 1NF

There are no multiple value attributes. The relation is already in 1NF.

Relation in 1NF:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `VENUE_ID`, `V_NAME`, `CAPACITY`

### Second Normal Form 2NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `VENUE_ID`, `V_NAME`, `CAPACITY`

### Third Normal Form 3NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `VENUE_ID`, `V_NAME`, `CAPACITY`
3. `V_NAME`, `CAPACITY`

### Table Creation

1. `EVENT` - `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `VENUE` - `VENUE_ID`, `V_NAME`, `CAPACITY`, `EVENT_ID`
3. `CAPACITY` - `V_NAME`, `CAPACITY`, `V_NAME`

---

## 3. Provided For

### Attributes

`EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `CATERING_ID`, `C_MENU`, `C_COST`

### First Normal Form 1NF

There are no multiple value attributes. The relation is already in 1NF.

Relation in 1NF:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `CATERING_ID`, `C_MENU`, `C_COST`

### Second Normal Form 2NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `CATERING_ID`, `C_MENU`, `C_COST`

### Third Normal Form 3NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `CATERING_ID`, `C_MENU`, `C_COST`
3. `CM_ID`, `C_MENU`, `C_COST`

### Table Creation

1. `EVENT` - `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
2. `CATERING` - `CATERING_ID`, `C_MENU`, `C_COST`, `C_MENU`
3. `C_MENU` - `CM_ID`, `C_MENU`, `C_COST`

---

## 4. Arranged For Decoration

### Attributes

`EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `DECORATION_ID`, `DECORATION_COST`

### First Normal Form 1NF

There is no multiple value attribute. The relation is already in 1NF.

Relation in 1NF:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `DECORATION_ID`, `DECORATION_COST`

### Second Normal Form 2NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `DECORATION_ID`, `DECORATION_COST`

### Third Normal Form 3NF

There is no transitive dependency.

Final relations:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `DECORATION_ID`, `DECORATION_COST`

### Table Creation

1. `EVENT` - `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
2. `DECORATION` - `DECORATION_ID`, `DECORATION_COST`

---

## 5. Arranged For Programme

### Attributes

`EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`

### First Normal Form 1NF

There is no multiple value attribute. The relation is already in 1NF.

Relation in 1NF:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`

### Second Normal Form 2NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`

### Third Normal Form 3NF

The relation is divided into:

1. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
2. `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`
3. `PROGRAMME_ID`, `P_DATE`

### Table Creation

1. `EVENT` - `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
2. `PROGRAMME` - `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`
3. `P_ID` - `P_CODE`, `PROGRAMME_ID`, `P_DATE`

---

## Finalization

### Temporary Tables

1. `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`
2. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `USER_ID`
3. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`
4. `VENUE_ID`, `V_NAME`, `CAPACITY`, `EVENT_ID`
5. `V_NAME`, `CAPACITY`, `V_NAME`
6. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
7. `CATERING_ID`, `C_MENU`, `C_COST`, `C_MENU`
8. `CM_ID`, `C_MENU`, `C_COST`
9. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
10. `DECORATION_ID`, `DECORATION_COST`
11. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
12. `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`
13. `P_CODE`, `PROGRAMME_ID`, `P_DATE`

### Final Tables

1. `USER_ID`, `U_MOBILE`, `USER_FULLNAME`, `USER_EMAIL`
2. `EVENT_ID`, `EVENT_DATE`, `EVENT_TYPE`, `EVENT_ID`
3. `V_NAME`, `CAPACITY`, `V_NAME`
4. `CATERING_ID`, `C_MENU`, `C_COST`, `C_MENU`
5. `CM_ID`, `C_MENU`, `C_COST`
6. `DECORATION_ID`, `DECORATION_COST`
7. `PROGRAMME_ID`, `PROGRAMME_TIME`, `P_DATE`
8. `P_CODE`, `PROGRAMME_ID`, `P_DATE`

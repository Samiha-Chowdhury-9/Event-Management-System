# Relational Algebra

## 1. Retrieve All Events with Their Types and Dates

### Question

Retrieve all events along with their types and dates.

### Relational Algebra

π e_id, e_type, e_date (Event)

### Description

This query selects the `e_id`, `e_type`, and `e_date` columns from the `Event` table.

---

## 2. Retrieve User Name for a Specific Event

### Question

Retrieve user name for a specific event, for example event with `e_id = 01`.

### Relational Algebra

π user_name (σ Event.e_id = '01' (Event ⨝ Event.user_id = Users.user_id Users))

### Description

This query retrieves the `user_name` for the event with `e_id = '01'` by joining the `Event` and `Users` tables using the `user_id` attribute.

---

## 3. Calculate Total Decoration Cost for an Event

### Question

Calculate total cost of decoration for an event, for example event with `e_id = 01`.

### Relational Algebra

SUM d_cost (σ e_id = '01' (Decoration))

### Description

This query calculates the total decoration cost by summing the `d_cost` values from the `Decoration` table for the event with `e_id = '01'`.

---

## 4. Retrieve All Events for a Specific User

### Question

Retrieve all events for a specific user, for example user with `user_id = 111`.

### Relational Algebra

σ user_id = '111' (Event)

### Description

This query retrieves all events from the `Event` table where the `user_id` is `111`.

---

## 5. Retrieve Catering Menu Options for an Event

### Question

Retrieve all catering menu options for an event, for example event with `e_id = 01`.

### Relational Algebra

π c_menu (σ e_id = '01' (Catering))

### Description

This query retrieves the `c_menu` attribute from the `Catering` table for the event with `e_id = '01'`.

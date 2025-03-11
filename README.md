
### GraphQL Queries and Mutations

To interact with the service, you will use **GraphQL queries** for fetching data and **mutations** for modifying data.

### 1. **Get Profile (Query)**

This query retrieves the details of the current profile.

#### Request

- **Method**: `POST`
- **URL**: `http://localhost:4000/graphql`
- **Headers**:
  - `Content-Type: application/json`
- **Body**:
  ```json
  {
    "query": "query { profile { name age city } }"
  }

### 1. **Update Profile (mutation)**

This query update the details of the current profile.

#### Request

- **Method**: `POST`
- **URL**: `http://localhost:4000/graphql`
- **Headers**:
  - `Content-Type: application/json`
- **Body**:
  ```json
  {
    "query": "mutation { updateName (name:\"John\") { name age city } }"
  }


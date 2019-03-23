# README

### Schema Tables
#### Regions
<table>
  <tr>
    <th>name</th>
    <th>higher_than_2016_national_average</th>
    <th>rank_2016</th>
    <th>top_1</th>
    <th>top_2</th>
    <th>top_3</th>
    <th>bottom_1</th>
    <th>bottom_2</th>
    <th>bottom_3</th>
    <th>mean_wage_gap_2016</th>
    <th>mean_wage_gap_change</th>
  </tr>
  <tr>
    <td>String</td>
    <td>Boolean</td>
    <td>Integer</td>
    <td>String</td>
    <td>String</td>
    <td>String</td>
    <td>String</td>
    <td>String</td>
    <td>String</td>
    <td>Decimal</td>
    <td>Decimal</td>
  </tr>
</table>

#### Companies
<table>
  <tr>
    <th>name</th>
    <th>address</th>
    <th>industry</th>
    <th>median_gender_gap_2019</th>
    <th>benefits</th>
  </tr>
  <tr>
    <td>String</td>
    <td>String(Geocodable)</td>
    <td>String</td>
    <td>Decimal</td>
    <td>Text(crowd-sourceable data)</td>
  </tr>
</table>

### Example curl scripts

1. Companies
  1. Create
  ```bash
  #!/bin/bash

  curl "http://localhost:3000/companies" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "company": {
        "name": "'"${NAME}"'",
        "industry": "filler"
      }
    }'

  echo
  ```
  1. Delete
  ```bash
  #!/bin/bash

  curl "http://localhost:3000/companies/${ID}" \
    --include \
    --request DELETE \
    --header "Content-Type: application/json" \

  echo
  ```

  1. See one (to search TODO: change id to company name)
  ```bash
  #!/bin/bash

  curl "http://localhost:3000/companies/${ID}" \
    --include \
    --request GET \

  echo
  ```

  1. See all (unlikely to need)
  ```bash
  #!/bin/bash

  curl "http://localhost:3000/companies" \
    --include \
    --request GET \

  echo
  ```

  1. Regions
    1. Create
    
    ```bash
    #!/bin/bash

    curl "http://localhost:3000/regions" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --data '{
        "region": {
          "name": "'"${NAME}"'",
          "higher_than_2016_national_average": "true"
        }
      }'

    echo
    ```
    1. Delete
    ```bash
    #!/bin/bash

    curl "http://localhost:3000/regions/${ID}" \
      --include \
      --request DELETE \
      --header "Content-Type: application/json" \

    echo
    ```

    1. See one (to search TODO: change id to company name)
    ```bash
    #!/bin/bash

    curl "http://localhost:3000/regions" \
      --include \
      --request GET \

    echo
    ```

    1. See all (unlikely to need)
    ```bash
    #!/bin/bash

    curl "http://localhost:3000/regions/${ID}" \
      --include \
      --request GET \

    echo
    ```

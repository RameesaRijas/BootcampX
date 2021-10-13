const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


const valueFromCli = process.argv.slice(2);
const cohort = valueFromCli[0] || 'FEB';
const limit = valueFromCli[1] || 5;


const selectQuery = `
SELECT students.id, students.name, cohorts.name AS cohort_name
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`

pool.query(selectQuery, [`%${cohort}%`, limit])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
})
.catch(err => {console.log(err)})
.finally(pool.end());
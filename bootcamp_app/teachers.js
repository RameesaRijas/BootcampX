const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const valueFromCli = process.argv.slice(2);
const cohort = valueFromCli[0] || 'JUL02';

const query = `SELECT distinct teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
ORDER BY teachers.name;`

pool.query(query, [cohort])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort} : ${user.teacher} `);
  })
})
.catch(err => {console.log(err)})
.finally(pool.end());
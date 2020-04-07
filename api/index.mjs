import express from 'express'
import pg from 'pg'
const app = express()

app.get('/.well-known/acme-challenge/0PpdoTts85IdVI83NU-SzNyPMS575iHqNzzTUL-MkGk', function(req, res) {
  res.send('0PpdoTts85IdVI83NU-SzNyPMS575iHqNzzTUL-MkGk.9jKzP9V98xrYuhQC_fLEKWCWLoD20YtArWUkUMk5SUk')
})

/*
app.get('/', (_, result) => {
  const request = {
    query: {
      bundesland: 'Bayern'
    }
  }
  let query = ''
  if ('bundesland' in request.query) {
    query = `SELECT Schulart FROM Lehrplan where Bundesland = '${request.query.bundesland}';`
  }
  if (query) {
    const client = new pg.Client({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } })
    client.connect()
    client.query(query, (pgError, pgResult) => {
      client.end()
      if (pgError) {
        result.status(500).send('PostgreSQL error: ' + pgError)
      } else {
        result
          .json([request, pgResult.rows])
          .cookie('passwort', 'baum', { expires: new Date(Date.now() + 31 * 24 * 60 * 60 * 1000), secure: true })
      }
    })
  } else {
    result.status(500).send('Error: No valid query.')
  }
})
*/

const port = process.env.PORT || 3000
app.listen(port, (error) => { if (error) { throw error } else { console.log(`Server running on port ${port}.`) } })

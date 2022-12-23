import express from 'express';
import db from './db.js';
import routes from './routes/index.js';
import cors from 'cors';

db.connect()

const app = express();

app.use(cors());
app.use(express.json());
app.use('/', routes);

const port = process.env.PORT || 4000;

app.listen(port, () =>
    console.log(`HW6 listening on port ${port}!`),
);


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const morgan = require('morgan');
var mysql = require('mysql');

var connectionString = mysql.createPool(
  {
    host: 'localhost',
    database: 'wdcEventDB'
  }
);

const app = express();

app.use(function(req,res,next) {
  req.pool = connectionString;
  next();
});

const client = {
    origin: "http://localhost:8080"
};

app.use(morgan('tiny'));
app.use(cors());
app.use(bodyParser.json());

app.use('/', indexRouter);
app.use('/users', usersRouter);

const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log(`listening on ${port}`);
});

module.exports = app;

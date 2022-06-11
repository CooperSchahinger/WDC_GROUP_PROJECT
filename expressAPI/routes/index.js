var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


router.get('/test', function(req, res) {
  req.pool.getConnection(function(err, connection) {
    if (err) {
      res.sendStatus(500);
      return;
    }
    var query = "SELECT profile_id FROM Profile";
    connection.query(query, function(err, rows, fields) {
    connection.release();
    if (err) {
      res.sendStatus(500);
      return;
    }
    res.json(rows);
    });
  });
});

router.post('/signup', function(req, res) {
  req.pool.getConnection(function(err, connection) {
    if (err) {
      res.sendStatus(500);
      return;
    }
    var query = "INSERT INTO Users (username, password) VALUES (?, ?)";
    connection.query(query, [username, password], function(err, rows, fields) {
    connection.release();
    if (err) {
      res.sendStatus(500);
      return;
    }

    });
  });
});


module.exports = router;

import express from "express";
import mysql from "mysql";
import jwt from 'jsonwebtoken';
import Cookies from 'js-cookie';

const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"fullstock"
})

import dotenv from 'dotenv';
dotenv.config();
const router = express.Router();
//const db = mysql.createConnection(process.env.DATABASE_URL);


  router.get('/', (req, res) => {
    const userId = req.headers.authorization;

    db.query('SELECT * FROM users WHERE userID = ?', [userId], (err, results) => {

        if (err) {
            return err
        }

        if (results.length === 0) {
            return res.status(404)
        }

        const userData = results[0];

        res.json({
            username: userData.username,
            email: userData.email,
            address: userData.address
        });
    });
});


router.put("/address", (req, res) => {
  const { newAddress } = req.body;
  const userId = req.headers.authorization;

  const q = "UPDATE users SET address = ? WHERE userID = ?";
  const values = [newAddress, userId];

  db.query(q, values, (err, result) => {
      if (err) {
          return err
      }
      if (result.affectedRows > 0) {
          return res.status(200)
      } else {
          return res.status(404)
      }
  });
});
  


export default router;
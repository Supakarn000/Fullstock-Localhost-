import express from "express";
import mysql from "mysql";
import dotenv from 'dotenv';
import session from 'express-session';
import cookieParser from 'cookie-parser';
dotenv.config();


const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"fullstock"
})
const router = express.Router();
//const db = mysql.createConnection(process.env.DATABASE_URL);

router.use(
    session({
        secret: process.env.SESSION_SECRET,
        resave: false,
        saveUninitialized: true,
    })
);

router.use(cookieParser());

router.post("/", (req, res) => {
    const { username, password } = req.body;

    db.query("SELECT * FROM users WHERE username = ?", [username], (selectErr, selectData) => {
        if (selectErr) {
            console.error("Error checking username: " + selectErr);
            return res.status(500).json({ error: "Failed to check username" });
        }
        if (selectData.length === 0) {
            return res.status(401).json({ error: "Username not found" });
        }
        const storedPassword = selectData[0].password;
        const isAdmin = selectData[0].isAdmin;

        if (password !== storedPassword) {
            return res.status(401).json({ error: "Incorrect password" });
        }
        const userId = selectData[0].userID;

        req.session.userID = userId;
        req.session.isAdmin = isAdmin;

        res.cookie("userID", userId);
        res.cookie("isAdmin", isAdmin);
        console.log('Session userID:', req.session.userID);
        console.log('Session isAdmin:', req.session.isAdmin);

        const updateTimestampQuery = "UPDATE users SET last_login = NOW() WHERE userID = ?";
        db.query(updateTimestampQuery, [userId], (updateErr) => {
            if (updateErr) {
                return res.status(500).json({ error: "Failed to update login timestamp" });
            }

            return res.status(200).json({ message: "Login successful", userId, isAdmin });
        });
    });
});


export default router;
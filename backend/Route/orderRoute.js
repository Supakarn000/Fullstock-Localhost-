import express from "express";
import mysql from "mysql2/promise"; 
import session from "express-session";

const router = express.Router();

const pool = mysql.createPool({
    host:"localhost",
    user:"root",
    password:"",
    database:"fullstock"
})

//const pool = mysql.createPool(process.env.DATABASE_URL);

router.use(
    session({
        secret: process.env.SESSION_SECRET,
        resave: false,
        saveUninitialized: true,
        cookie: { secure: true },
    })
);

router.post('/', async (req, res) => {
    const ses = req.session.userID;
    try {
        //console.log(ses);
        //console.log(req.session);
        const { userID, cartItems, totalPrice } = req.body;

        const order = {
            userID,
            cartItems,
            totalPrice,
            orderDate: new Date(),
        };

        const insertQuery = "INSERT INTO orders (userID, cartItems, totalPrice, orderDate) VALUES (?, ?, ?, ?)";
        const decrement = "UPDATE products SET instock = instock - 1 WHERE productID = ?";
        const increment = "UPDATE products SET sold = sold + 1 WHERE productID = ?";

        const connection = await pool.getConnection();

        try {
            await connection.beginTransaction();

            const [orderResult] = await connection.query(insertQuery, [order.userID, JSON.stringify(order.cartItems), order.totalPrice, order.orderDate]);

            for (const cartItem of order.cartItems) {
                await connection.query(decrement, [cartItem.productID]);
                await connection.query(increment, [cartItem.productID]);
            }

            await connection.commit();
            connection.release();

            return res.status(200).json({ message: 'Order created successfully', order: orderResult });
        } catch (error) {
            await connection.rollback();
            connection.release();
            throw error;
        }
    } catch (error) {
        res.status(500)
    }
});

export default router;
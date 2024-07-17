import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import session from "express-session";
import userRoute from "./routes/user.route.js";

dotenv.config();
const app = express();

app.use(express.json());
app.use(cors({ credentials: true, origin: "http://localhost:5173" }));
app.use(
  session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: { secure: "auto" },
  })
);

app.use("/users", userRoute);

app.listen(process.env.APP_PORT, () => {
  console.log(`App running on port ${process.env.APP_PORT}`);
});

import mongoose from 'mongoose';
import dotenv from "dotenv";

export default {
    connect: () => {
        dotenv.config();
        mongoose.set('strictQuery', false);

        mongoose.connect(
            process.env.MONGO_URL, {
                dbName: "ScoreCard",
            })
            .then(() => console.log("mongo db connection created"));
    }
}

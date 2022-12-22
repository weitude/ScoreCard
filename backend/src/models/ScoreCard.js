import mongoose from 'mongoose'

const Schema = mongoose.Schema;

const ScoreCardSchema = new Schema({
    name: String,
    subject: String,
    score: Number
});

const ScoreCard = mongoose.model('scorecard', ScoreCardSchema);
export default ScoreCard;
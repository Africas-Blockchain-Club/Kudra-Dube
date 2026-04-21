import express from 'express';
import userRouter from './user.mjs';

const app = express();

app.use(express.json());

// Global Logging Middleware
app.use((req, res, next) => {
    console.log(req.method + ' ' + req.url);
    next();
});

// General Routes
app.get('/', (req, res) => {
    res.send('Hello World');
});

app.get('/search', (req, res) => {
    const name = req.query.name;
    res.send('You searched for ' + name);
});

app.post('/login', (req, res) => {
    const email = req.body.email;
    const password = req.body.password;

    if (email == 'kudra@gmail.com' && password == '1234') {
        res.send('login successful');
    } else {
        res.send('login unsuccesful');
    }
});

app.get('/broken', (req, res, next) => {
    const error = new Error('This route is broken!');
    next(error);
});

// Mounting the User Router
// This makes all routes in user.mjs accessible under /users
app.use('/users', userRouter);

// Global Error Handler
app.use((err, req, res, next) => {
    console.error(err.message);
    res.status(500).send('Something went wrong');
});

app.listen(3000, () => {
    console.log('listening on port 3000');
});
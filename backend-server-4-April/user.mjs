import express from 'express';

const router = express.Router();

// This corresponds to GET /users/
router.get('/', (req, res) => {
    res.send('All Users');
});

// This corresponds to POST /users/
router.post('/', (req, res) => {
    res.send('User created');
});

// This corresponds to GET /users/:id
router.get('/:id', (req, res) => {
    const id = req.params.id;
    res.send('User id is ' + id);
});

export default router;
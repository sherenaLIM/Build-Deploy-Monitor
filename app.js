const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Define a route for the /ping endpoint
app.get('/ping', (req, res) => {
    res.status(200).json({ message: 'Ping successful!' });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
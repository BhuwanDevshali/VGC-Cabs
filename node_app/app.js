const express = require('express');
const app = express();
const mongoose = require('mongoose');

// Connect to MongoDB
mongoose.connect('mongodb+srv://bhuwan:MlJeTrAiLQqcdGeu@vga.fqfk4p9.mongodb.net/', {
  useNewUrlParser: true,
  useUnifiedTopology: true
})
  .then(() => {
    console.log('Connected to MongoDB');
  })
  .catch((error) => {
    console.error('Failed to connect to MongoDB:', error);
  });

// Define API endpoints
app.get('/api/rides', (req, res) => {
  // Logic to retrieve rides from the database
});

app.post('/api/rides', (req, res) => {
  // Logic to create a new ride in the database
});

app.put('/api/rides/:id', (req, res) => {
  // Logic to update a ride in the database
});

app.delete('/api/rides/:id', (req, res) => {
  // Logic to delete a ride from the database
});

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
const express = require('express');
const router = express.Router();

// Import the Payment model
const Payment = require('../models/payment');

// GET all payments
router.get('/', async (req, res) => {
  try {
    const payments = await Payment.find();
    res.json(payments);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET a specific payment
router.get('/:id', getPayment, (req, res) => {
  res.json(res.payment);
});

// CREATE a new payment
router.post('/', async (req, res) => {
  const payment = new Payment({
    amount: req.body.amount,
    method: req.body.method,
    status: req.body.status,
    rideId: req.body.rideId
  });

  try {
    const newPayment = await payment.save();
    res.status(201).json(newPayment);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
});

// UPDATE a payment
router.patch('/:id', getPayment, async (req, res) => {
  if (req.body.amount != null) {
    res.payment.amount = req.body.amount;
  }
  if (req.body.method != null) {
    res.payment.method = req.body.method;
  }
  if (req.body.status != null) {
    res.payment.status = req.body.status;
  }
  if (req.body.rideId != null) {
    res.payment.rideId = req.body.rideId;
  }

  try {
    const updatedPayment = await res.payment.save();
    res.json(updatedPayment);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
});

// DELETE a payment
router.delete('/:id', getPayment, async (req, res) => {
  try {
    await res.payment.remove();
    res.json({ message: 'Payment deleted' });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Middleware function to get a specific payment by ID
async function getPayment(req, res, next) {
  let payment;
  try {
    payment = await Payment.findById(req.params.id);
    if (payment == null) {
      return res.status(404).json({ message: 'Payment not found' });
    }
  } catch (err) {
    return res.status(500).json({ message: err.message });
  }

  res.payment = payment;
  next();
}

module.exports = router;
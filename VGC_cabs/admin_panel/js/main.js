const mainJsCode = `
// Importing dependencies
import { getUsers, getRides, getPayments } from './api.js';

// Function to fetch and display users
const fetchUsers = async () => {
  try {
    const users = await getUsers();
    // Display users in the admin panel
    console.log(users);
  } catch (error) {
    console.error('Error fetching users:', error);
  }
};

// Function to fetch and display rides
const fetchRides = async () => {
  try {
    const rides = await getRides();
    // Display rides in the admin panel
    console.log(rides);
  } catch (error) {
    console.error('Error fetching rides:', error);
  }
};

// Function to fetch and display payments
const fetchPayments = async () => {
  try {
    const payments = await getPayments();
    // Display payments in the admin panel
    console.log(payments);
  } catch (error) {
    console.error('Error fetching payments:', error);
  }
};

// Fetch and display users, rides, and payments on page load
window.addEventListener('load', () => {
  fetchUsers();
  fetchRides();
  fetchPayments();
});
`;

mainJsCode;
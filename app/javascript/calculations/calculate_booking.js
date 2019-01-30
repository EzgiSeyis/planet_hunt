const calculateTotal = () => {
  const mSecToDay = 60*60*24*1000;
  const price = parseInt(document.querySelector('#planet-price').innerHTML);

  const start_date = new Date(document.querySelector('#booking_start_date').value);
  const end_date = new Date(document.querySelector('#booking_end_date').value);
  const result = Math.ceil((end_date - start_date)/mSecToDay);
  if(result > 0) {
    document.querySelector('#booking-total').innerHTML = '<h3>Total: $' + (result * price) + ' for ' + result + ' days</h3>';

  }
}

export { calculateTotal };

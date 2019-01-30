import { calculateTotal } from "../calculations/calculate_booking.js";

setInterval(function(){ calculateTotal(); }, 1000);
calculateTotal()

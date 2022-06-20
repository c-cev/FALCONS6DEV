AirlineTickets ticketToBerlin = new AirlineTickets();
ticketToBerlin.arrivalCity='Berlin';
ticketToBerlin.departureCity='London';
ticketToBerlin.flightNumber='19TX';
ticketToBerlin.seatAssigned='12F';
system.debug(ticketToBerlin);
ticketToBerlin.printTicket();

AirlineTickets ticketToNY = new AirlineTickets();
ticketToNY.arrivalCity='NY';
ticketToNY.departureCity='Miami';
ticketToNY.flightNumber='NY01';
ticketToNY.seatAssigned='14B';
system.debug(ticketToNY);
ticketToNY.printTicket();
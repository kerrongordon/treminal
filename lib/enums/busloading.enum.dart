enum BusLoading {
  // departingSoon,
  boardingInProgress,
  // leavingTheTerminal,
  queue,
}

String busLoadingToString(BusLoading data) {
  switch (data) {
    // case BusLoading.departingSoon:
    //   return 'Departing Soon';
    case BusLoading.boardingInProgress:
      return 'Boarding in Progress';
    // case BusLoading.leavingTheTerminal:
    //   return 'Leaving the Terminal';
    case BusLoading.queue:
      return 'In Queue';
  }
}

bool busLoadingToBool(BusLoading data) {
  switch (data) {
    // case BusLoading.departingSoon:
    //   return false;
    case BusLoading.boardingInProgress:
      return true;
    // case BusLoading.leavingTheTerminal:
    //   return false;
    case BusLoading.queue:
      return false;
  }
}

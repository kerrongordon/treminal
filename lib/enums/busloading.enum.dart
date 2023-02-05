enum BusLoading {
  boardingInProgress,
  queue,
}

String busLoadingToString(BusLoading data) {
  switch (data) {
    case BusLoading.boardingInProgress:
      return 'Boarding in Progress';
    case BusLoading.queue:
      return 'In Queue';
  }
}

bool busLoadingToBool(BusLoading data) {
  switch (data) {
    case BusLoading.boardingInProgress:
      return true;
    case BusLoading.queue:
      return false;
  }
}

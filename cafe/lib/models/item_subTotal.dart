class SubTotalPrice {
  int tax;
  int deliverCharges;
  int updatedPrice;
  SubTotalPrice(this.tax, this.deliverCharges, this.updatedPrice);
  int _subTotal = 0;
  int get subTotal => _subTotal;
  void calculateSubTotal() {
    _subTotal = tax + deliverCharges + updatedPrice;
  }
}

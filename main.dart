class Order {
    var _id;
    var _reference;
    var date;
    var code;
    List<String> bookings;

    Order(this._id, this._reference, {this.date});
    Order.withDiscount(this._id, this._reference, [this.code]) {
        date = DateTime.now();
        }
    
    getInfo() {
        print('''Your order information:
---------------------------
Id: $_id
Reference: $_reference
Date: $date
${code != null ? 'Code: $code' : ''}
---------------------------''');
    }
}

void main() {
    var order1 = Order(1, 'ref1', date: DateTime.now());
    var order2 = Order.withDiscount(2, 'ref2')
        ..code = 'DARTROCKS!'
        ..bookings = ['bookings1', 'bookings2', 'bookings3']
        ..getInfo();

    order1.getInfo();
}
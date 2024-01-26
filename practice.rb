# Encapsulation

class Transaction
  attr_reader :quantity, :price

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  def total
    @quantity + @price
  end
end

transaction_obj = Transaction.new(5, 10.99)

puts "Quantity: #{transaction_obj.quantity}"
puts "Price: #{transaction_obj.price}"
puts "Total: #{transaction_obj.total}"



# Abstraction

class Transaction
  def initialize(quantity, price, discount = false)
    @quantity = quantity
    @price = price
    @discount = discount
  end

  def total_transaction
    total_price - get_discount
  end

  private

  def total_price
    @quantity * @price
  end

  def get_discount
    @discount ? 10 : 0
  end
end

transaction_obj = Transaction.new(10, 899, true)
puts "Total Transaction: #{transaction_obj.total_transaction}"

# Ducktyping

class Payment
  def type(payment)
    payment.type
  end
end

class FullyPaid
  def type
    puts "Full paid payment"
  end
end

class Installment
  def type
    puts "Installment payment"
  end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)

from . import db


class User(db.Model):
    __tablename__ = 'Users'
    UserID = db.Column(db.Integer, primary_key=True)
    FirstName = db.Column(db.String(50), nullable=False)
    LastName = db.Column(db.String(50), nullable=False)
    Email = db.Column(db.String(100), nullable=False)
    Password = db.Column(db.String(150), nullable=False)
    CreatedAt = db.Column(
        db.DateTime, server_default=db.func.current_timestamp())

    def __repr__(self):
        return f"<User {self.FirstName} {self.LastName}>"


class Transaction(db.Model):
    __tablename__ = 'Transactions'
    TransactionID = db.Column(db.Integer, primary_key=True)
    UserID = db.Column(db.Integer, nullable=False)
    CategoryID = db.Column(db.Integer, nullable=False)
    Amount = db.Column(db.Integer, nullable=False)
    TransactionType = db.Column(db.Enum('Income', 'Expense'), nullable=False)
    TransactionDate = db.Column(db.DateTime, nullable=False)
    Description = db.Column(db.Text)

    def __repr__(self):
        return (f"<Transaction ID: {self.TransactionID}, "
                f"Category: {self.CategoryID}, Amount: {self.Amount}, "
                f"Type: {self.TransactionType}>")


class Category(db.Model):
    __tablename__ = 'Categories'
    CategoryID = db.Column(db.Integer, primary_key=True)
    CategoryName = db.Column(db.String(250), nullable=False)

    def __repr__(self):
        return f"<Category {self.CategoryID}: {self.CategoryName}>"

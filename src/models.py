from flask_sqlalchemy import SQLAlchemy
import os 
from flask_sqlalchemy import SQLAlchemy
from base64 import b64encode
from werkzeug.security import generate_password_hash, check_password_hash
from sqlalchemy import Boolean
from sqlalchemy import TypeDecorator
import datetime


db = SQLAlchemy()

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_name = db.Column(db.String(120), unique=False, nullable=False)
    salt=db.Column(db.String(120),nullable=False)
    hashed_password = db.Column(db.String(120), unique=False, nullable=False)
    full_name = db.Column(db.String(120), unique=False, nullable=False)

    def __repr__(self):
        return '<User %r>' % self.user_name

    def set_password(self,password):
        self.hashed_password = generate_password_hash(f"{password}{self.salt}")
    
    def check_password(self,password):
        return check_password_hash(
            self.hashed_password,
            f"{password}{self.salt}"
        )

    def __init__(self,  password, full_name, user_name ):
        self.salt = b64encode(os.urandom(4)).decode("utf-8")
        self.set_password(password)
        self.full_name = full_name
        self.user_name=user_name
      
    def serialize(self):
        return {
            "id": self.id,
            "full_name": self.full_name,
            "User_name":self.user_name
        }

class Worker(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    init_date = db.Column(db.String(80), unique=False, nullable=False)
    Consultor = db.Column(db.String(80), unique=False, nullable=False)
    candidate = db.Column(db.String(80), unique=False, nullable=False)
    cedula = db.Column(db.Integer, unique=False, nullable=False)
    status = db.Column(db.String(80), unique=False, nullable=False)
    phone_number = db.Column(db.String(120), unique=False, nullable=False)
    email = db.Column(db.String(120), unique=False, nullable=False)
    catchment_source  = db.Column(db.String(120), unique=False, nullable=False)
    managment = db.Column(db.String(120), unique=False, nullable=False)
    vacant = db.Column(db.String(120), unique=False, nullable=False)
    interview_date = db.Column(db.String(120), unique=False, nullable=False)
    actual_charge = db.Column(db.String(120), unique=False, nullable=False)
    company = db.Column(db.String(120), unique=False, nullable=False)
    sector = db.Column(db.String(120), unique=False, nullable=False)
    coin = db.Column(db.String(120), unique=False, nullable=False)
    basic_salary = db.Column(db.Integer, unique=False, nullable=False)
    variable_salary = db.Column(db.Integer, unique=False, nullable=False)
    cesta_ticket = db.Column(db.Integer, unique=False, nullable=False)
    Profit_Days = db.Column(db.Integer, unique=False, nullable=False)
    vacations = db.Column(db.Integer, unique=False, nullable=False)
    Vacation_Bonus = db.Column(db.Integer, unique=False, nullable=False)
    Factor = db.Column(db.Integer, unique=False, nullable=True)
    Estimated_annual_package = db.Column(db.Integer, unique=False, nullable=False)
    Observations = db.Column(db.String(300), unique=False, nullable=True)
    Production_bonus = db.Column(db.String(120), unique=False, nullable=False)
    Transport_bonus=db.Column(db.String(120), unique=False, nullable=False)
    Savings_Bank = db.Column(db.String(120), unique=False, nullable=False)
    sales_commissions = db.Column(db.String(120), unique=False, nullable=False)
    parking_payment = db.Column(db.String(120), unique=False, nullable=False)
    full_HCM_Emp_Family = db.Column(db.String(120), unique=False, nullable=False)
    partial_HCM_Emp_Family = db.Column(db.String(120), unique=False, nullable=False)
    Vehicle_insurance = db.Column(db.String(120), unique=False, nullable=False)
    life_insurance = db.Column(db.String(120), unique=False, nullable=False)
    dinning_room = db.Column(db.String(120), unique=False, nullable=False)
    food_bags = db.Column(db.String(120), unique=False, nullable=False)

    def serialize(self):
        return {
                "id": self.id,
                "init_date":self.init_date,
                "Consultor":self.Consultor,
                "candidate": self.candidate,
                "cedula": self.cedula,
                "status": self.status,
                "phone_number": self. phone_number,
                "catchment_source": self.catchment_source,
                "email": self.email,
                "managment": self.managment,
                "vacant": self.vacant,
                "interview_date": self.interview_date,
                "actual_charge": self.actual_charge,
                "company": self.company, 
                "sector": self.sector, 
                "coin": self.coin,
                "basic_salary": self.basic_salary,
                "variable_salary": self.variable_salary,
                "cesta_ticket": self.cesta_ticket,
                "Profit_Days": self.Profit_Days,
                "vacations": self.vacations,
                "Vacation_Bonus": self.Vacation_Bonus,
                "Factor": self.Factor,
                "Estimated_annual_package": self.Estimated_annual_package,
                "Observations": self.Observations,
                "Production_bonus": self.Production_bonus,
                "Transport_bonus":self.Transport_bonus,
                "Savings_Bank": self.Savings_Bank,
                "sales_commissions":self.sales_commissions,
                "parking_payment": self.parking_payment,
                "full_HCM_Emp_Family": self.full_HCM_Emp_Family,
                "partial_HCM_Emp_Family": self.partial_HCM_Emp_Family,
                "Vehicle_insurance": self.Vehicle_insurance,
                "life_insurance": self.life_insurance,
                "dinning_room": self.dinning_room, 
                "food_bags": self.food_bags,
            
            }





# /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
# /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
# /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
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
    # db.String(80), unique=False, nullable=False)
    Consultor = db.Column(db.String(80), unique=False, nullable=False)
    candidate = db.Column(db.String(80), unique=False, nullable=False)
    # nationality = db.Column(db.String(80), unique=False, nullable=False)
    cedula = db.Column(db.Integer, unique=False, nullable=False)
    status = db.Column(db.String(80), unique=False, nullable=False)
    phone_number = db.Column(db.Integer, unique=False, nullable=False)
    email = db.Column(db.String(120), unique=False, nullable=False)
    catchment_source  = db.Column(db.String(120), unique=False, nullable=False)
    managment = db.Column(db.String(120), unique=False, nullable=False)
    vacant = db.Column(db.String(120), unique=False, nullable=False)
    # branch_office = db.Column(db.String(120), unique=False, nullable=False)
    interview_date = db.Column(db.String(120), unique=False, nullable=False)
    # Technical_Interview_date = db.Column(db.String(120), unique=False, nullable=False)
    # salary_offer_date = db.Column(db.String(120), unique=False, nullable=False)
    # preemployment_test_date = db.Column(db.String(120), unique=False, nullable=False)
    # References_Check_date = db.Column(db.String(120), unique=False, nullable=False)
    # admission_date = db.Column(db.String(120), unique=False, nullable=False)
    # current_employment_contract = db.Column(db.String(120), unique=False, nullable=False)
    # Participation_at_Softech = db.Column(db.Boolean(), unique=False, nullable=False)
    # Reason = db.Column(db.String(120), unique=False, nullable=False)
    # Salary_Aspirations = db.Column(db.String(120), unique=False, nullable=False)
    # Academic_level = db.Column(db.String(120), unique=False, nullable=False)
    # Place_of_residence = db.Column(db.String(120), unique=False, nullable=False)
    # experience_years = db.Column(db.String(120), unique=False, nullable=False)
    # availability = db.Column(db.String(120), unique=False, nullable=False)
    # Current_courses = db.Column(db.String(120), unique=False, nullable=False)
    # Software_Hardware_ERP_knowledge = db.Column(db.String(120), unique=False, nullable=False)
    # know_someone_company = db.Column(db.Boolean(), unique=False, nullable=False)
    # name_work_person = db.Column(db.String(120), unique=False, nullable=False)
    actual_charge = db.Column(db.String(120), unique=False, nullable=False)
    company = db.Column(db.String(120), unique=False, nullable=False)
    sector = db.Column(db.String(120), unique=False, nullable=False)
    coin = db.Column(db.String(120), unique=False, nullable=False)
    basic_salary = db.Column(db.Integer, unique=False, nullable=False)
    variable_salary = db.Column(db.Integer, unique=False, nullable=False)
    cesta_ticket = db.Column(db.Integer, unique=False, nullable=False)
    # Monthly_Cash_Flow = db.Column(db.String(120), unique=False, nullable=False)
    Profit_Days = db.Column(db.Integer, unique=False, nullable=False)
    vacations = db.Column(db.Integer, unique=False, nullable=False)
    Vacation_Bonus = db.Column(db.Integer, unique=False, nullable=False)
    Factor = db.Column(db.Integer, unique=False, nullable=True)
    Estimated_annual_package = db.Column(db.Integer, unique=False, nullable=False)
    # Mixed_mothly_compensation = db.Column(db.Integer, unique=False, nullable=False)
    # Mixed_anual_compensation = db.Column(db.Integer, unique=False, nullable=False)
    # Assistance_bonus = db.Column(db.Boolean(), unique=False, nullable=False)
    # Production_bonus = db.Column(db.Boolean(), unique=False, nullable=False)
    # Transport_bonus=db.Column(db.Boolean(), unique=False, nullable=False)
    # Savings_Bank = db.Column(db.Boolean(), unique=False, nullable=False)
    # sales_commissions = db.Column(db.Boolean(), unique=False, nullable=False)
    # parking_payment = db.Column(db.Boolean(), unique=False, nullable=False)
    # full_H_C_M_Emp_Family = db.Column(db.Boolean(), unique=False, nullable=False)
    # partial_H_C_M_Emp_Family = db.Column(db.Boolean(), unique=False, nullable=False)
    # Funeral_Insurance = db.Column(db.Boolean(), unique=False, nullable=False)
    # Vehicle_insurance = db.Column(db.Boolean(), unique=False, nullable=False)
    # life_insurance = db.Column(db.Boolean(), unique=False, nullable=False)
    # dinning_room = db.Column(db.Boolean(), unique=False, nullable=False)
    # food_bags = db.Column(db.Boolean(), unique=False, nullable=False)
    # uniform = db.Column(db.Boolean(), unique=False, nullable=False)
    # birthday_bonus = db.Column(db.Boolean(), unique=False, nullable=False)
    # vacational_plans = db.Column(db.Boolean(), unique=False, nullable=False)
    # Seniority_premium = db.Column(db.Boolean(), unique=False, nullable=False)
    # children_premium = db.Column(db.Boolean(), unique=False, nullable=False)
    # proffesion_premium = db.Column(db.Boolean(), unique=False, nullable=False)
    # december_gift = db.Column(db.Boolean(), unique=False, nullable=False)
    # Gym = db.Column(db.Boolean(), unique=False, nullable=False)
    # School_scholarships = db.Column(db.Boolean(), unique=False, nullable=False)
    # school_supplies = db.Column(db.Boolean(), unique=False, nullable=False)
    # marriage_bonus = db.Column(db.Boolean(), unique=False, nullable=False)
    # birth_bonus = db.Column(db.Boolean(), unique=False, nullable=False)
    # Vehicle_Credit = db.Column(db.Boolean(), unique=False, nullable=False)
    # Mortgage_credit = db.Column(db.Boolean(), default=False,unique=False, nullable=False)
    # Psychological_Test = db.Column(db.Integer, unique=False, nullable=False)
    # Technical_knowledge_test = db.Column(db.Integer, unique=False, nullable=False)
    # Business_knowledge_test = db.Column(db.Integer, unique=False, nullable=False)
    # Other_tests = db.Column(db.Integer, unique=False, nullable=False)
    # Global_Average = db.Column(db.Integer, unique=False, nullable=False)
    # References_Check = db.Column(db.String(120), unique=False, nullable=False)
    # Technical_Test_Results = db.Column(db.Integer, unique=False, nullable=False)
    # Observations = db.Column(db.String(120), unique=False, nullable=False)
    # Days_passed_requisition_interviewGH = db.Column(db.String(120), unique=False, nullable=False)
    # Days_passed_interviewGH_Techinterview = db.Column(db.String(120), unique=False, nullable=False)
    # Days_passed_Techinterview_entry = db.Column(db.String(120), unique=False, nullable=False)
    # Days_passed_requisition_entry = db.Column(db.String(120), unique=False, nullable=False)
    # Days_passed_open_status = db.Column(db.String(120), unique=False, nullable=False)
    # Checking_Records_Detail = db.Column(db.String(120), unique=False, nullable=False)

    # def __init__(self, init_date):
    #     self.init_date = datetime.datetime.now(datetime.timezone.utc)

    
    def serialize(self):
        return {
            "id": self.id,
            "init_date":self.init_date,
            "Consultor":self.Consultor,
            "candidate": self.candidate,
            # "nationality": self.nationality,
            "cedula": self.cedula,
            "status": self.status,
            "phone_number": self. phone_number,
            "catchment_source": self.catchment_source,
            "email": self.email,
            "managment": self.managment,
            "vacant": self.vacant,
            # "branch_office": self.branch_office,
            "interview_date": self.interview_date,
            # "Technical_Interview_date": self.Technical_Interview_date,
            # "salary_offer_date": self.salary_offer_date,
            # "preemployment_test_date": self.preemployment_test_date,
            # "References_Check_date": self.References_Check_date,
            # "admission_date": self.admission_date,
            # "current_employment_contract": self.current_employment_contract,
            # "Participation_at_Softech": self.Participation_at_Softech,
            # "Reason": self.Reason, 
            # "Salary_Aspirations": self.Salary_Aspirations,
            # "Academic_level": self.Academic_level,
            # "Place_of_residence":self.Place_of_residence,
            # "experience_years": self.experience_years,
            # "availability": self.availability,
            # "Current_courses": self.Current_courses,
            # "Software_Hardware_ERP_knowledge": self.Software_Hardware_ERP_knowledge,
            # "know_someone_company": self.know_someone_company,
            # "name_work_person": self.name_work_person,
            "actual_charge": self.actual_charge,
            "company": self.company, 
            "sector": self.sector, 
            "coin": self.coin,
            "basic_salary": self.basic_salary,
            "variable_salary": self.variable_salary,
            "cesta_ticket": self.cesta_ticket,
            # "Monthly_Cash_Flow": self.Monthly_Cash_Flow,
            "Profit_Days": self.Profit_Days,
            "vacations": self.vacations,
            "Vacation_Bonus": self.Vacation_Bonus,
            "Factor": self.Factor,
            "Estimated_annual_package": self.Estimated_annual_package,
            # "Mixed_mothly_compensation": self.Mixed_mothly_compensation,
            # "Mixed_anual_compensation": self.Mixed_anual_compensation,
            # "Assistance_bonus": self.Assistance_bonus,
            # "Production_bonus": self.Production_bonus,
            # "Transport_bonus":self.Transport_bonus,
            # "Savings_Bank": self.Savings_Bank,
            # "sales_commissions":self.sales_commissions,
            # "parking_payment": self.parking_payment,
            # "full_H_C_M_Emp_Family": self.full_H_C_M_Emp_Family,
            # "partial_H_C_M_Emp_Family": self.partial_H_C_M_Emp_Family,
            # "Funeral_Insurance": self.Funeral_Insurance,
            # "Vehicle_insurance": self.Vehicle_insurance,
            # "life_insurance": self.life_insurance,
            # "dinning_room": self.dinning_room, 
            # "food_bags": self.food_bags,
            # "uniform": self.uniform,
            # "birthday_bonus": self.birthday_bonus,
            # "vacational_plans": self.vacational_plans,
            # "Seniority_premium": self.Seniority_premium,
            # "children_premium": self.children_premium,
            # "proffesion_premium": self.proffesion_premium,
            # "december_gift": self.december_gift,
            # "Gym": self.Gym,
            # "School_scholarships": self.School_scholarships,
            # "school_supplies": self.school_supplies,
            # "marriage_bonus": self.marriage_bonus,
            # "birth_bonus": self.birth_bonus,
            # "Vehicle_Credit": self.Vehicle_Credit,
            # "Mortgage_credit": self.Mortgage_credit,
            # "Psychological_Test": self.Psychological_Test,
            # "Technical_knowledge_test": self.Technical_knowledge_test,
            # "Business_knowledge_test": self.Business_knowledge_test,
            # "Other_tests": self.Other_tests,
            # "Global_Average": self.Global_Average,
            # "References_Check": self.References_Check, 
            # "Technical_Test_Results": self.Technical_Test_Results, 
            # "Observations": self.Observations,
            # "Days_passed_requisition_interviewGH": self.Days_passed_requisition_interviewGH,
            # "Days_passed_interviewGH_Techinterview": self.Days_passed_interviewGH_Techinterview,
            # "Days_passed_Techinterview_entry": self.Days_passed_Techinterview_entry,
            # "Days_passed_requisition_entry": self.Days_passed_requisition_entry,
            # "Days_passed_open_status": self.Days_passed_open_status,
            # "Checking_Records_Detail": self.Checking_Records_Detail,
        }
    


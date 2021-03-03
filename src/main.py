"""
This module takes care of starting the API Server, Loading the DB and Adding the endpoints
"""
import os
from flask import Flask, request, jsonify, url_for
from flask_migrate import Migrate
from flask_swagger import swagger
from flask_cors import CORS
from utils import APIException, generate_sitemap
from admin import setup_admin
from models import db, User, Worker
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt_identity
from sqlalchemy import Boolean

app=Flask(__name__)
app.url_map.strict_slashes = False
app.config['JWT_SECRET_KEY'] = 'jugadores'
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DB_CONNECTION_STRING')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
jwt = JWTManager(app)
MIGRATE = Migrate(app, db)
db.init_app(app)
CORS(app)
setup_admin(app)


# app = Flask(__name__)
# app.url_map.strict_slashes = False
# app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DB_CONNECTION_STRING')
# app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# MIGRATE = Migrate(app, db)
# db.init_app(app)
# CORS(app)
# setup_admin(app)

# Handle/serialize errors like a JSON object
@app.errorhandler(APIException)
def handle_invalid_usage(error):
    return jsonify(error.to_dict()), error.status_code

# generate sitemap with all your endpoints
@app.route('/')
def sitemap():
    return generate_sitemap(app)

@app.route('/user', methods=['GET'])
def handle_hello():

    response_body = {
        "msg": "Hello, this is your GET /user response "
    }

    return jsonify(response_body), 200

@app.route('/signup_manager', methods=['POST'])
def handle_signup_manager():
    """registra un manager de Gestion Humana"""

    data = request.get_json()

    if data is None:
        raise APIException("You need to specify the request body as a json object", status_code=400)
    if 'user_name' not in data:
        raise APIException('You need to specify the user', status_code=400)
    if 'full_name' not in data:
        raise APIException('You need to specify the full_name', status_code=400)
    if "password" not in data:
        raise APIException('You need to specify the password', status_code=400)

    new_hrmanager = User(user_name=data['user_name'], full_name=data['full_name'], password=data["password"],)
    db.session.add(new_hrmanager)
    db.session.commit()
    if new_hrmanager:
        return new_hrmanager.serialize(),201


# inicio de sesión para a los usuarios
@app.route("/login", methods=["POST"])
def handle_login(): 
    """ verifica el password de manager de Gestion Humana con user = data['user'] y genera un token si lo consigue"""
    # Revisar jwt
    
    data = request.get_json()

    if not data:
        return jsonify({"msg": "Missing JSON in request"}), 400
    
    user_name = data.get('user_name', None)
    password = data.get('password', None)

    if not user_name:
        return jsonify({"msg": "Missing user parameter"}), 400
    if not password:
        return jsonify({"msg": "Missing password parameter"}), 400
    
    admin = User.query.filter_by(user_name=user_name).one_or_none()

    if admin.check_password(password):
            response = {'jwt': create_access_token(identity=admin.user_name), 'is_user':True} #aquí crea el token del login
            return jsonify(response), 200
    if not admin :
        return jsonify({"msg": "User does not exist"}), 404


@app.route('/signup_worker', methods=['POST'])
def handle_signup_worker():
    """ Registra un trabajador para incluirlo en la DB"""
    
    data = request.get_json()

    if data is None:
        raise APIException("You need to specify the request body as a json object", status_code=400)

    new_worker = Worker(init_date=data['init_date'], Consultor=data['Consultor'], candidate=data['candidate'], nationality=data['nationality'], cedula=data['cedula'],
    status=data['status'],phone_number=data['phone_number'],email=data['email'],catchment_source=data['catchment_source'],managment=data['managment'],vacant=data['vacant'],
    branch_office=data['branch_office'],interview_date=data['interview_date'],Technical_Interview_date=data['Technical_Interview_date'],salary_offer_date=data['salary_offer_date'],
    preemployment_test_date=data['preemployment_test_date'],References_Check_date=data['References_Check_date'],admission_date=data['admission_date'],
    current_employment_contract=data['current_employment_contract'],Participation_at_Softech=data['Participation_at_Softech'],Reason=data['Reason'],Salary_Aspirations=data['Salary_Aspirations'],
    Academic_level=data['Academic_level'],Place_of_residence=data['Place_of_residence'],experience_years=data['experience_years'],availability=data['availability'],
    Current_courses=data['Current_courses'],Software_Hardware_ERP_knowledge=data['Software_Hardware_ERP_knowledge'],know_someone_company=data['know_someone_company'],
    name_work_person=data['name_work_person'],actual_charge=data['actual_charge'],company=data['company'],sector=data['sector'],coin=data['coin'],
    basic_salary=data['basic_salary'],variable_salary=data['variable_salary'],cesta_ticket=data['cesta_ticket'],Monthly_Cash_Flow=data['Monthly_Cash_Flow'],Profit_Days=data['Profit_Days'],
    vacations=data['vacations'],Vacation_Bonus=data['Vacation_Bonus'],Factor=data['Factor'],Estimated_annual_package=data['Estimated_annual_package'],
    Mixed_mothly_compensation=data['Mixed_mothly_compensation'],Mixed_anual_compensation=data['Mixed_anual_compensation'],Assistance_bonus=data['Assistance_bonus'],Production_bonus=data['Production_bonus'],
    Transport_bonus=data['Transport_bonus'],sales_commissions=data["sales_commissions"],Savings_Bank=data['Savings_Bank'],parking_payment=data['parking_payment'],full_H_C_M_Emp_Family=data['full_H_C_M_Emp_Family'],
    partial_H_C_M_Emp_Family=data['partial_H_C_M_Emp_Family'],Funeral_Insurance=data['Funeral_Insurance'],Vehicle_insurance=data['Vehicle_insurance'],life_insurance=data['life_insurance'],dinning_room=data['dinning_room'],
    food_bags=data['food_bags'],uniform=data['uniform'],birthday_bonus=data['birthday_bonus'],vacational_plans=data['vacational_plans'],Seniority_premium=data['Seniority_premium'],
    children_premium=data['children_premium'],proffesion_premium=data['proffesion_premium'],december_gift=data['december_gift'],Gym=data['Gym'],School_scholarships=data['School_scholarships'],
    school_supplies=data['school_supplies'],marriage_bonus=data['marriage_bonus'],birth_bonus=data['birth_bonus'],Vehicle_Credit=data['Vehicle_Credit'],Mortgage_credit=data['Mortgage_credit'],
    Psychological_Test=data['Psychological_Test'],Technical_knowledge_test=data['Technical_knowledge_test'],Business_knowledge_test=data['Business_knowledge_test'],Other_tests=data['Other_tests'],Global_Average=data['Global_Average'],
    References_Check=data['References_Check'],Technical_Test_Results=data['Technical_Test_Results'],Observations=data['Observations'],Days_passed_requisition_interviewGH=data['Days_passed_requisition_interviewGH'],
    Days_passed_interviewGH_Techinterview=data['Days_passed_interviewGH_Techinterview'],Days_passed_Techinterview_entry=data['Days_passed_Techinterview_entry'],Days_passed_requisition_entry=data['Days_passed_requisition_entry'],
    Days_passed_open_status=data['Days_passed_open_status'],Checking_Records_Detail=data['Checking_Records_Detail'],
    )
    db.session.add(new_worker) 
    db.session.commit()
    if new_worker:
        return new_worker.serialize(),201

@app.route('/worker')
def handle_all_worker():
    """Devuelve la lista de trabajadores"""
    workers = Worker.query.all()
    response_body = []
    for worker in workers:
        response_body.append(worker.serialize())
    return jsonify(response_body), 200

@app.route("/worker/<int:id>")
def handle_worker(id):
    """ buscar y regresa un trabajador"""
    workers = Worker.query.get(id)
    if isinstance(Worker, workers):
        return jsonify(workers.serialize()), 200
    else:
        return jsonify({
            "result": "worker not found"
        }), 404

@app.route('/worker/<int:id>', methods=['DELETE'])
def delete_worker(id): 
    """ elimina un trabajador por su ID"""
    db.session.delete(Worker.query.get(id) )
    db.session.commit() 
    return '', 204

@app.route('/salary', methods=["GET"])
def handle_all_salarys():
    """Devuelve la lista de salarios"""
    all_salary = db.session.query(Worker.basic_salary ) 
    basic_salarys = []
    for salary in all_salary:
        basic_salarys.append(salary[0])
    ll_salary = db.session.query( Worker.variable_salary )
    v_salarys = []
    for salary in ll_salary:
        v_salarys.append(salary[0])
    l_salary = db.session.query( Worker.cesta_ticket )
    c_salarys = []
    for salary in l_salary:
        c_salarys.append(salary[0])
    as_salary = db.session.query( Worker.Salary_Aspirations )
    a_salarys = []
    for salary in as_salary:
        a_salarys.append(salary[0])
    mf_salary = db.session.query( Worker.Monthly_Cash_Flow )
    m_salarys = []
    for salary in mf_salary:
        m_salarys.append(salary[0])
    du_salary = db.session.query( Worker.Profit_Days)
    d_salarys = []
    for salary in du_salary:
        d_salarys.append(salary[0])
    dv_salary = db.session.query( Worker.vacations)
    vac_salarys = []
    for salary in dv_salary:
        vac_salarys.append(salary[0])
    bv_salary = db.session.query( Worker.Vacation_Bonus)
    b_salarys = []
    for salary in bv_salary:
        b_salarys.append(salary[0])
    fac_salary = db.session.query( Worker.Factor)
    f_salarys = []
    for salary in fac_salary:
        f_salarys.append(salary[0])
    return jsonify("salario basico",basic_salarys,"salario variable",v_salarys, "cesta ticket",  c_salarys, "aspiraciones salariales", a_salarys, "flujo de caja mensual", m_salarys, "dias de utilidades", d_salarys,"disfrute de vacaciones", vac_salarys,"Bono vacacional", b_salarys,"Factor", f_salarys ), 200


@app.route('/mood/<int:id>', methods=['DELETE'])
def delete_mood_autless(id): 
    """ elimina un talento humano por su ID"""
    
    db.session.delete(Worker.query.get(id) )
    db.session.commit() 
    return '', 204

# this only runs if `$ python src/main.py` is executed
if __name__ == '__main__':
    PORT = int(os.environ.get('PORT', 3000))
    app.run(host='0.0.0.0', port=PORT, debug=False)

"""empty message

Revision ID: 14d23ef36d13
Revises: 1d7bd2a87389
Create Date: 2021-03-01 14:40:26.092256

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '14d23ef36d13'
down_revision = '1d7bd2a87389'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_index('Checking_Records_Detail', table_name='worker')
    op.drop_index('Days_passed_Techinterview_entry', table_name='worker')
    op.drop_index('Days_passed_interviewGH_Techinterview', table_name='worker')
    op.drop_index('Days_passed_open_status', table_name='worker')
    op.drop_index('Days_passed_requisition_entry', table_name='worker')
    op.drop_index('Days_passed_requisition_interviewGH', table_name='worker')
    op.drop_index('Observations', table_name='worker')
    op.drop_column('worker', 'Mortgage_credit')
    op.drop_column('worker', 'uniform')
    op.drop_column('worker', 'Other_tests')
    op.drop_column('worker', 'children_premium')
    op.drop_column('worker', 'birthday_bonus')
    op.drop_column('worker', 'References_Check')
    op.drop_column('worker', 'Vehicle_Credit')
    op.drop_column('worker', 'Days_passed_interviewGH_Techinterview')
    op.drop_column('worker', 'Observations')
    op.drop_column('worker', 'Technical_Test_Results')
    op.drop_column('worker', 'Days_passed_Techinterview_entry')
    op.drop_column('worker', 'proffesion_premium')
    op.drop_column('worker', 'vacational_plans')
    op.drop_column('worker', 'Gym')
    op.drop_column('worker', 'School_scholarships')
    op.drop_column('worker', 'december_gift')
    op.drop_column('worker', 'Psychological_Test')
    op.drop_column('worker', 'school_supplies')
    op.drop_column('worker', 'Days_passed_requisition_interviewGH')
    op.drop_column('worker', 'Seniority_premium')
    op.drop_column('worker', 'Global_Average')
    op.drop_column('worker', 'Days_passed_requisition_entry')
    op.drop_column('worker', 'marriage_bonus')
    op.drop_column('worker', 'dinning_room')
    op.drop_column('worker', 'birth_bonus')
    op.drop_column('worker', 'Technical_knowledge_test')
    op.drop_column('worker', 'Days_passed_open_status')
    op.drop_column('worker', 'food_bags')
    op.drop_column('worker', 'Checking_Records_Detail')
    op.drop_column('worker', 'Business_knowledge_test')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('worker', sa.Column('Business_knowledge_test', mysql.INTEGER(), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Checking_Records_Detail', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('food_bags', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Days_passed_open_status', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('Technical_knowledge_test', mysql.INTEGER(), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('birth_bonus', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('dinning_room', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('marriage_bonus', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Days_passed_requisition_entry', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('Global_Average', mysql.INTEGER(), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Seniority_premium', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Days_passed_requisition_interviewGH', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('school_supplies', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Psychological_Test', mysql.INTEGER(), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('december_gift', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('School_scholarships', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Gym', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('vacational_plans', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('proffesion_premium', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Days_passed_Techinterview_entry', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('Technical_Test_Results', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Observations', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('Days_passed_interviewGH_Techinterview', mysql.VARCHAR(length=120), nullable=False))
    op.add_column('worker', sa.Column('Vehicle_Credit', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('References_Check', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('birthday_bonus', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('children_premium', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Other_tests', mysql.INTEGER(), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('uniform', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.add_column('worker', sa.Column('Mortgage_credit', mysql.TINYINT(display_width=1), autoincrement=False, nullable=False))
    op.create_index('Observations', 'worker', ['Observations'], unique=True)
    op.create_index('Days_passed_requisition_interviewGH', 'worker', ['Days_passed_requisition_interviewGH'], unique=True)
    op.create_index('Days_passed_requisition_entry', 'worker', ['Days_passed_requisition_entry'], unique=True)
    op.create_index('Days_passed_open_status', 'worker', ['Days_passed_open_status'], unique=True)
    op.create_index('Days_passed_interviewGH_Techinterview', 'worker', ['Days_passed_interviewGH_Techinterview'], unique=True)
    op.create_index('Days_passed_Techinterview_entry', 'worker', ['Days_passed_Techinterview_entry'], unique=True)
    op.create_index('Checking_Records_Detail', 'worker', ['Checking_Records_Detail'], unique=True)
    # ### end Alembic commands ###

"""empty message

Revision ID: 3b3585624d21
Revises: 
Create Date: 2021-03-18 15:43:01.367048

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '3b3585624d21'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('user',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('user_name', sa.String(length=120), nullable=False),
    sa.Column('salt', sa.String(length=120), nullable=False),
    sa.Column('hashed_password', sa.String(length=120), nullable=False),
    sa.Column('full_name', sa.String(length=120), nullable=False),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('worker',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('init_date', sa.String(length=80), nullable=False),
    sa.Column('Consultor', sa.String(length=80), nullable=False),
    sa.Column('candidate', sa.String(length=80), nullable=False),
    sa.Column('cedula', sa.Integer(), nullable=False),
    sa.Column('status', sa.String(length=80), nullable=False),
    sa.Column('phone_number', sa.Integer(), nullable=False),
    sa.Column('email', sa.String(length=120), nullable=False),
    sa.Column('catchment_source', sa.String(length=120), nullable=False),
    sa.Column('managment', sa.String(length=120), nullable=False),
    sa.Column('vacant', sa.String(length=120), nullable=False),
    sa.Column('interview_date', sa.String(length=120), nullable=False),
    sa.Column('actual_charge', sa.String(length=120), nullable=False),
    sa.Column('company', sa.String(length=120), nullable=False),
    sa.Column('sector', sa.String(length=120), nullable=False),
    sa.Column('coin', sa.String(length=120), nullable=False),
    sa.Column('basic_salary', sa.Integer(), nullable=False),
    sa.Column('variable_salary', sa.Integer(), nullable=False),
    sa.Column('cesta_ticket', sa.Integer(), nullable=False),
    sa.Column('Profit_Days', sa.Integer(), nullable=False),
    sa.Column('vacations', sa.Integer(), nullable=False),
    sa.Column('Vacation_Bonus', sa.Integer(), nullable=False),
    sa.Column('Factor', sa.Integer(), nullable=True),
    sa.Column('Estimated_annual_package', sa.Integer(), nullable=False),
    sa.Column('Observations', sa.String(length=300), nullable=False),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('worker')
    op.drop_table('user')
    # ### end Alembic commands ###
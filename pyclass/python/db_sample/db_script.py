from  sqlalchemy import create_engine
db_connection = create_engine('postgresql+psycopg2://usr_test:1234567@127.0.0.1/test')

from sqlalchemy.orm import sessionmaker
db_session = sessionmaker(bind=db_connection)
Session = db_session()

from sqlalchemy.ext.declarative import declarative_base
base = declarative_base()

from sqlalchemy import Column, Integer, String
class Person():
    __tablename__ = 'people'
    id = Column(Integer, primary_key=True)
    firstName = Column(String)
    lastName = Column(String)
    age = Column(Integer)
    fatherName = Column(String)

base.metadata.create_all(Session)

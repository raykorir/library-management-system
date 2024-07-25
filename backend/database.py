from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base


URL_DB = "postgresql://library_system_owner:Z7l0bnGjYrRO@ep-odd-rain-a20iv53y.eu-central-1.aws.neon.tech/library_system?sslmode=require"
engine = create_engine(URL_DB)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base() 
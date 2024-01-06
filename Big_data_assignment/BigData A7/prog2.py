from pyspark.sql.functions import *
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('prog1').getOrCreate()

file = '/home/john/Desktop/Every_Day_Notes/BigData/data/emp.csv'
empSchema = 'empno int ,ename string , job String , mgr INT , hire DATE , sal DOUBLE , comm DOUBLE , deptno int'
emp_table = spark.read\
    .schema(empSchema)\
    .option('mode','PERMISSIVE')\
    .csv(file)\
    .groupBy('deptno','job').agg(max('sal').alias("salary_Dept_Jobwise"))\
    .orderBy('deptno')

emp_table.printSchema()
emp_table.show()

spark.stop()
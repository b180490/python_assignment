from pyspark.sql.functions import *
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('prog1').getOrCreate()

file = '/home/john/Desktop/Every_Day_Notes/BigData/data/emp.csv'

file_dept = '/home/john/Desktop/Every_Day_Notes/BigData/data/dept.csv'
empSchema = 'empno int ,ename string , job String , mgr INT , hire DATE , sal DOUBLE , comm DOUBLE , deptno int'
emp_table = spark.read\
    .schema(empSchema)\
    .option('mode','PERMISSIVE')\
    .csv(file)\
    .groupBy('deptno','job').agg(sum('sal').alias("salary_Dept_Jobwise"))

# emp_table.printSchema()
emp_table.show()

deptSchema = 'deptno int , dname String , location String'
dept_table = spark.read\
    .schema(deptSchema)\
    .option('mode', 'DROPMALFORMED')\
    .option('nullValue', 'NULL')\
    .csv(file_dept)

dept_table.show()

result = emp_table.join(dept_table , [emp_table.deptno == dept_table.deptno],'inner')\
    .groupBy('dname').sum('salary_Dept_Jobwise')

         # .alias('total_sal')).orderBy('total_sal')

result.show()
spark.stop()
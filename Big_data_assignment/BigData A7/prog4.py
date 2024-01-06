from pyspark.sql.functions import *
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('prog1').getOrCreate()

file = '/home/john/Desktop/Every_Day_Notes/BigData/data/movies/ratings.csv'

rating_schema = "userid int , movieid int , rating double , timestamp DATETIME"
rating_table = spark.read\
    .option('header',True)\
    .option('mode','PERMISSIVE')\
    .csv(file)

# rating_table.printSchema()
# rating_table.show()

rating_table.createOrReplaceTempView('ratings')



result = spark.sql("""SELECT year(from_unixtime(timestamp)) as Year , count(rating) as count 
from ratings group by year(from_unixtime(timestamp)) 
order by count(rating) desc """)
result.show()

spark.stop()
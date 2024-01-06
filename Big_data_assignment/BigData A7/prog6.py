from pyspark.sql import SparkSession
from pyspark.sql.functions import *

spark = SparkSession.builder.appName("prog6").getOrCreate()

file = "/home/john/Desktop/Every_Day_Notes/BigData/data/ncdc/*"
my_schema = "record String"
ncdc_staging = spark.read\
    .schema(my_schema)\
    .option('delimiter','\n')\
    .text(file)


ncdc_staging.printSchema()
ncdc_staging.show()

regex = '^.{15}([0-9]{4}).{68}([-\+][0-9]{4})([0-9]).*$'

ncdc = ncdc_staging.select(regexp_extract('record' , regex , idx = 1).alias("Year") ,
                           regexp_extract('record',regex,idx=2).alias("Temp"),
                           regexp_extract('record',regex , idx=3).alias("Quality"))\
.select(col('Year').cast('INT'), col('Temp').cast('DOUBLE'), col('Quality').cast('TINYINT'))\
.where('temp != 9999 AND quality IN (0,1,2,4,5,9)')

ncdc.printSchema()
ncdc.show()

spark.stop()
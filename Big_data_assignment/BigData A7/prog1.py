from pyspark.sql.functions import *
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('prog1').getOrCreate()

file = '/home/john/spark-3.3.1-bin-hadoop3/LICENSE'
regex = "[^a-zA-Z]"
text = spark.read\
    .option('delimiter','\n')\
    .text(file)

text.printSchema()
text.show(truncate=False)
# text.show()
# exp = [' ' , ',', 'is', 'shall', 'under', 'over', 'by', 'are', 'the', 'a', 'an', 'on', 'for', 'and', 'or', 'of', 'in', 'to', 'this', 'that', 'you', 'any', 'such' ]
analysis = text.select(explode(split(lower('value') ,regex )))\
    .withColumnRenamed('col' , 'words')\
    .where("words not in ( '\t',' ','' , ',', 'is', 'shall', 'under', 'over', 'by', 'are', 'the', 'a', 'an', 'on', 'for', 'and', 'or', 'of', 'in', 'to', 'this', 'that', 'you', 'any', 'such' )")\
    .groupBy('words').count()\
    .orderBy('count',ascending=False)\
    .limit(10)

analysis.show()







spark.stop()
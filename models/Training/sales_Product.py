import snowflake.snowpark.functions as F
def model (dbt,session):
  

  df_sql = session.sql("select * from prod.product")
  df_filter = df_sql.filter(F.col("STATE") == 'Telangana')
 
  return df_filter 
import mysql.connector

def insertDatabase(arrayMe, trukOri):
    #establishing the connection
    conn = mysql.connector.connect(
       user='root', password='', host='localhost', database='truk_od')
    #Creating a cursor object using the cursor() method
    cursor = conn.cursor()
    # arrayMe = [342, 455,
    #          ['kepala_truk', 0.85, 2, 87, 231, 322],
    #          ['badan_truk', 0.97, 52, 219, 341, 421]]
    # Preparing SQL query to INSERT a record into the database.
    sql = """INSERT INTO images VALUES
        ('', %s, %s, %s, %s,
        %s, %s, %s, %s, %s, %s,
        %s, %s, %s, %s, %s, %s,
        %s, 'active')"""

    data = (trukOri, arrayMe[0], arrayMe[1], arrayMe[4],
            arrayMe[2][0], arrayMe[2][1], arrayMe[2][2], arrayMe[2][3], arrayMe[2][4], arrayMe[2][5],
            arrayMe[3][0], arrayMe[3][1], arrayMe[3][2], arrayMe[3][3], arrayMe[3][4], arrayMe[3][5],
            None)
    cursor.execute(sql, data)
    conn.commit()
    conn.close()
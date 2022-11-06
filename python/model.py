import mysql.connector
import math
import datetime

def getWeightLVQ():
    conn = mysql.connector.connect(
       user='root', password='', host='localhost', database='truk_mmc2')

    cursor = conn.cursor()
    cursor.execute("""SELECT wa_w_kepala, wa_h_kepala, wa_w_badan, wa_h_badan, 
                    wb_w_kepala, wb_h_kepala, wb_w_badan, wb_h_badan, 
                    prosentase, alpha, max_epoch, status_weight, id_weight 
                    FROM weight
                    WHERE status_weight = 'AKTIF'""")
    result = cursor.fetchone()
    resultList = []
    for data_out in result:
        resultList.append(data_out)

    return resultList
# arrayMe = [202, 230,
#          ['kepala_truk', 99, 87, 54, 142, 124],
#          ['badan_truk', 99, 4, 2, 207, 143]]
# arrayMeZero = [201, 199,
#          ['kepala_truk', 99, 3, 27, 150, 147],
#          ['badan_truk', 97, 25, -1, 171, 127]]

# print(("%.17f" % resultList[9]).rstrip('0').rstrip('.'))

def insertDatabase(arrayMe, trukOri):
    #establishing the connection
    conn = mysql.connector.connect(
       user='root', password='', host='localhost', database='truk_mmc2')
    #Creating a cursor object using the cursor() method
    cursor = conn.cursor()
    # arrayMe = [342, 455,
    #          ['kepala_truk', 0.85, 2, 87, 231, 322],
    #          ['badan_truk', 0.97, 52, 219, 341, 421]]
    # Preparing SQL query to INSERT a record into the database.
    # ===================== INSERT DATA for VALIDATION ==========================
    # sql = """INSERT INTO images VALUES
    #     ('', %s, %s, %s, %s,
    #     %s, %s, %s, %s, %s, %s,
    #     %s, %s, %s, %s, %s, %s,
    #     %s, 'active')"""

    # data = (trukOri, arrayMe[0], arrayMe[1], arrayMe[4],
    #         arrayMe[2][0], arrayMe[2][1], arrayMe[2][2], arrayMe[2][3], arrayMe[2][4], arrayMe[2][5],
    #         arrayMe[3][0], arrayMe[3][1], arrayMe[3][2], arrayMe[3][3], arrayMe[3][4], arrayMe[3][5],
    #         None)
    # cursor.execute(sql, data)

    # ======================== PROSES KLASIFIKASI LVQ ===========================
    resultList = getWeightLVQ()
    result_a = math.sqrt(
        math.pow((arrayMe[2][4] - resultList[0]), 2) +
        math.pow((arrayMe[2][5] - resultList[1]), 2) +
        math.pow((arrayMe[3][4] - resultList[2]), 2) +
        math.pow((arrayMe[3][5] - resultList[3]), 2)
    )

    result_b = math.sqrt(
        math.pow((arrayMe[2][4] - resultList[4]), 2) +
        math.pow((arrayMe[2][5] - resultList[5]), 2) +
        math.pow((arrayMe[3][4] - resultList[6]), 2) +
        math.pow((arrayMe[3][5] - resultList[7]), 2)
    )

    # =============== INSERT DATA TESTING ====================
    if (result_a < result_b):
        classIndikasi = 1
    else:
        classIndikasi = 0

    sqlIndikasi = """INSERT INTO images_test VALUES ('', 
                %s, %s, %s, %s, %s,
                %s, %s, %s, %s, %s, %s,
                %s, %s, %s, %s, %s, %s,
                %s, %s, %s, %s)"""

    dataIndikasi = (resultList[12], trukOri, arrayMe[0], arrayMe[1], arrayMe[4],
            arrayMe[2][0], arrayMe[2][1], arrayMe[2][2], arrayMe[2][3], arrayMe[2][4], arrayMe[2][5],
            arrayMe[3][0], arrayMe[3][1], arrayMe[3][2], arrayMe[3][3], arrayMe[3][4], arrayMe[3][5],
            classIndikasi, result_a, result_b, datetime.datetime.now())
    cursor.execute(sqlIndikasi, dataIndikasi)

    conn.commit()
    conn.close()
    return classIndikasi

import cv2
import numpy as np
import time
import os
from deteksiOD import yolo_capture
from model import insertDatabase

# Load Yolo
net = cv2.dnn.readNet("yolov4-tiny-custom_last.weights", "yolov4-tiny-custom.cfg")
net_OD = cv2.dnn.readNet("yolov4-custom_6000.weights", "yolov4-custom.cfg")
classes = []

# def tinyyolo_capture(file):
with open("coco_vehicle.names", "r") as f:
    classes = [line.strip() for line in f.readlines()]
layer_names = net.getLayerNames()
output_layers = [layer_names[i[0] - 1] for i in net.getUnconnectedOutLayers()]
colors = np.random.uniform(0, 255, size=(len(classes), 3))

# Loading image
# camera = cv2.VideoCapture("../../video/batch03_20220209/testVID_20220209_093105.mp4")

def deteksi_truk(filename):
    new_frame_count = 0
    # used to record the time when we processed last frame
    prev_frame_time = 0
    # used to record the time at which we processed current frame
    new_frame_time = 0
    time_count_capture = 0
    arrayCapture = []
    detect = True
    camera = cv2.VideoCapture(filename)
    last_frame_num = camera.get(cv2.CAP_PROP_FRAME_COUNT)
    while detect == True:
        new_frame_count = new_frame_count + 1
        _, img = camera.read()
        if new_frame_count < last_frame_num:
            height, width, channels = img.shape

            # Detecting objects
            blob = cv2.dnn.blobFromImage(img, 0.00392, (352, 352), (0, 0, 0), True, crop=False)

            net.setInput(blob)
            outs = net.forward(output_layers)

            # Showing informations on the screen
            class_ids = []
            confidences = []
            boxes = []
            for out in outs:
                for detection in out:
                    scores = detection[5:]
                    class_id = np.argmax(scores)
                    confidence = scores[class_id]
                    if confidence > 0.6:
                        # Object detected
                        center_x = int(detection[0] * width)
                        center_y = int(detection[1] * height)
                        w = int(detection[2] * width)
                        h = int(detection[3] * height)

                        # Rectangle coordinates
                        x = int(center_x - w / 2)
                        y = int(center_y - h / 2)

                        boxes.append([x, y, w, h])
                        confidences.append(float(confidence))
                        class_ids.append(class_id)

                        # Ketika tinggi bounding box truk melebihi 200px, maka save gambar
                        # beri jeda 1 detik untuk pengambilan gambar selanjutnya
                        if (h > 200) & (h < 380) & (w < 380) & (time_count_capture == 0) & (class_id == 0) & (
                                confidence > 0.86):
                            filenameJpg = './truk-ori/truk' + str(int(time.time())) + '.jpg'
                            roi = img[y:y + h, x:x + w]
                            cv2.imwrite(filename=filenameJpg, img=roi)
                            arrayCapture = yolo_capture(roi, net_OD)
                            time_count_capture = time.time()
                            print("classCapture = ", class_id, " w: ", w, " h: ", h, " c:", confidence, "%")
                            print("==================================")

                            if (not arrayCapture[2][0]) | (not arrayCapture[3][0]):
                                print("Terdeteksi Kegagalan Deteksi OD")
                            else:
                                print(arrayCapture)
                                insertDatabase(arrayCapture, filenameJpg)

                            # print("eKepala = ", arrayCapture[2][0])
                            # print("eBadan = ", arrayCapture[3][0])

                        if (time_count_capture > 0):
                            count_second = time.time() - time_count_capture
                            count_second = count_second % (24 * 3600)
                            print("count = ", str(count_second))
                            if (count_second > 1):
                                time_count_capture = 0
                                count_second = 0
                                arrayCapture = []
                        print("time capture = ", time_count_capture)
                        print("class = ", class_id, " w: ", w, " h: ", h)

            indexes = cv2.dnn.NMSBoxes(boxes, confidences, 0.5, 0.4)
            # print(indexes)
            font = cv2.FONT_HERSHEY_PLAIN
            for i in range(len(boxes)):
                if i in indexes:
                    x, y, w, h = boxes[i]
                    label = str(classes[class_ids[i]])
                    color = colors[class_ids[i]]
                    if not arrayCapture:
                        cv2.rectangle(img, (x, y), (x + w, y + h), color, 2)
                        cv2.putText(img, label, (x, y + 10), font, 1, color, 1)
                    else:
                        if arrayCapture[1] < 200:
                            cv2.rectangle(img, (x, y), (x + w, y + h), color, 2)
                            cv2.putText(img, label, (x, y + 10), font, 1, color, 1)
                        else:
                            cv2.rectangle(img, (x, y), (x + w, y + h), (0, 0, 255), 2)
                            cv2.putText(img, 'Truk OD', (x, y + 15), font, 1, (0, 0, 255), 1)

            # time when we finish processing for this frame
            new_frame_time = time.time()

            # Calculating the fps

            # fps will be number of frame processed in given time frame
            # since their will be most of time error of 0.001 second
            # we will be subtracting it to get more accurate result
            fps = 1 / (new_frame_time - prev_frame_time)
            prev_frame_time = new_frame_time
            # converting the fps into integer
            fps = int(fps)
            # converting the fps to string so that we can display it on frame
            # by using putText function
            fps = str(fps)
            # putting the FPS count on the frame
            print("fps = ", fps)
            cv2.putText(img, 'FPS = ' + fps, (7, 70), font, 3, (100, 255, 0), 3, cv2.LINE_AA)
            cv2.imshow('Image', img)
            # out.write(img)
            key = cv2.waitKey(1)
            if key == 27:
                break
        else:
            print("no shape found")
            detect = False
    camera.release()
# fourcc = cv2.VideoWriter_fourcc(*'MJPG')
# out = cv2.VideoWriter('output1.avi', fourcc, 20.0, (1280, 720))
# out.release()
# deteksi_truk("testing07.mp4")
cv2.destroyAllWindows()


# for file in os.listdir("../../video/uji/"):
#     if file.endswith(".mp4"):
#         path = os.path.join("../../video/uji/", file)
#         tinyyolo_capture(path)
# cv2.destroyAllWindows()
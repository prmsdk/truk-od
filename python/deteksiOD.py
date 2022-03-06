import cv2
import numpy as np
import time
import os

# Load Yolo
print("LOADING YOLO")
# net = cv2.dnn.readNet("yolov4-custom_6000.weights", "yolov4-custom.cfg")
#save all the names in file o the list classes
classes = []
with open("coco_od.names", "r") as f:
    classes = [line.strip() for line in f.readlines()]

def yolo_capture(img, net):
    # get layers of the network
    layer_names = net.getLayerNames()
    # Determine the output layer names from the YOLO model
    output_layers = [layer_names[i[0] - 1] for i in net.getUnconnectedOutLayers()]
    # array parameter function OD
    arrayCapture = [0, 0,
                    ['', 0, 0, 0, 0, 0],
                    ['', 0, 0, 0, 0, 0],
                    '']
    # Capture frame-by-frame
    # img = cv2.imread(img)
    #     img = cv2.resize(img, None, fx=0.4, fy=0.4)
    height, width, channels = img.shape

    arrayCapture[0] = height
    arrayCapture[1] = width
    # print("hImage = ", height)
    # print("wImage = ", width)

    # USing blob function of opencv to preprocess image
    blob = cv2.dnn.blobFromImage(img, 1 / 255.0, (352, 352), swapRB=True, crop=False)
    # Detecting objects
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
                label = str(classes[class_id])

                if class_id == 0:
                    arrayCapture[2][0] = label
                    arrayCapture[2][1] = int(confidence * 100)
                    arrayCapture[2][2] = x
                    arrayCapture[2][3] = y
                    arrayCapture[2][4] = w
                    arrayCapture[2][5] = h
                elif class_id == 1:
                    arrayCapture[3][0] = label
                    arrayCapture[3][1] = int(confidence * 100)
                    arrayCapture[3][2] = x
                    arrayCapture[3][3] = y
                    arrayCapture[3][4] = w
                    arrayCapture[3][5] = h

    # We use NMS function in opencv to perform Non-maximum Suppression
    # we give it score threshold and nms threshold as arguments.
    indexes = cv2.dnn.NMSBoxes(boxes, confidences, 0.5, 0.4)
    colors = [[0, 255, 0], [0, 255, 255]]
    # colors = np.array_str["#FFF", "#FEFEFE"]
    for i in range(len(boxes)):
        if i in indexes:
            x, y, w, h = boxes[i]
            label = str(classes[class_ids[i]])
            color = colors[class_ids[i]]
            confidence = int(confidences[class_ids[i]] * 100)
            cv2.rectangle(img, (x, y), (x + w, y + h), color, 2)
            cv2.putText(img, label + str(confidence) + '%', (x, y + 10), cv2.FONT_HERSHEY_SIMPLEX, 1/3 , color, 1)
    #
    #         print("classId = ", class_ids[i])
    #         print("className = ", label)
    #         print("h_" + label + " = " + str(h))
    #         print("w_" + label + " = " + str(w))
    #         print("x_" + label + " = " + str(x))
    #         print("y_" + label + " = " + str(y))

    # cv2.imshow("Image", img)
    if (not arrayCapture[2][0]) | (not arrayCapture[3][0]):
        print("Terdeteksi Kegagalan Deteksi OD")
    else:
        filenameOD = './truk-od/trukOD' + str(int(time.time())) + '.jpg'
        cv2.imwrite(filename= filenameOD, img=img)
        arrayCapture[4] = filenameOD
    return arrayCapture

# cv2.waitKey(0)
# cv2.destroyAllWindows()
#     time.sleep(1)

# for file in os.listdir("../testing02_20220215/hasil-uji"):
#     if file.endswith(".jpg"):
#         path = os.path.join("../testing02_20220215/hasil-uji", file)
#         yolo_capture(path)
# cv2.destroyAllWindows()
from tkinter import *
import webbrowser
import cv2 as cv
import ctypes
from allinOD import deteksi_truk
from allinOD import deteksi_truk_folder
from allinOD import deteksi_webcam
from tkinter import filedialog

def open_image():
    global my_image
    root.filename = filedialog.askopenfilename(initialdir="./", title="Pilih Video", filetypes=[("mp4 files", "*.mp4")])
    deteksi_truk(root.filename)

def open_folder():
    root.folder = filedialog.askdirectory()
    deteksi_truk_folder(root.folder)

def open_webcam():
    cap = cv.VideoCapture(0)
    if cap is None or not cap.isOpened():
        ctypes.windll.user32.MessageBoxW(0, "Camera/Webcam tidak ditemukan", "Perhatian", 0)
    else:
        deteksi_webcam()

def open_data():
    webbrowser.open("http://localhost/truk-od/images_test", new=1)

class App:
    def __init__(self, master):
        master.geometry("600x300")
        fm = Frame(master)
        Label(root, text="Deteksi Over Dimension dan Overload \n Pada Truk Menggunakan Metode YOLO", font="serif",  width=40, height=2, anchor=CENTER).pack(side=TOP, expand=YES)
        Button(root, text = "Open File", command = open_image).pack(side=TOP, expand=YES)
        Button(root, text = "Open Folder", command = open_folder).pack(side=TOP, expand=YES)
        Button(root, text = "Open Camera", command = open_webcam).pack(side=TOP, expand=YES)
        Button(root, text = "Display Data", command = open_data).pack(side=TOP, expand=YES)
        fm.pack(fill=BOTH, expand=YES)
# if __name__ == "__main__":
root = Tk()
root.option_add('*font', ('verdana', 12, 'bold'))
root.title("Deteksi Truk Over Dimension")
display = App(root)
root.mainloop()

from tkinter import *
from PIL import ImageTk, Image
from allinOD import deteksi_truk
from tkinter import filedialog
from model import insertDatabase
import cv2

def open_image():
    global my_image
    root.filename = filedialog.askopenfilename(initialdir="./", title="Pilih Video", filetypes=[("mp4 files", "*.mp4")])
    deteksi_truk(root.filename)

# if __name__ == "__main__":
root = Tk()
root.title("Belajar open file video")
my_btn = Button(root, text = "Open File", command = open_image).pack()
root.mainloop()

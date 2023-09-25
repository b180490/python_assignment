# Q2. Write a Rectangle class in Python language, allowing you to build a
# rectangle with length and width attributes . Create a Perimeter() method to
# calculate the perimeter of the rectangle and a Area() method to calculate the
# area of the rectangle . Create a method display() that display the length, width,
# perimeter and area of an object created using an instantiation on rectangle class.
# Create a Parallelepiped child class inheriting from the Rectangle class and with
# a height attribute and another Volume() method to calculate the volume of the
# Parallelepiped

class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def perimeter(self):
        p = 2 * (self.length + self.width)
        return p

    def area(self):
        a = self.length * self.width
        return a

    def display(self):
        print(f"Length of the rectangle:{self.length}")
        print(f"Width of the rectangle:{self.width}")
        print(f"perimeter of the rectangle:{Rectangle.perimeter(self)}")
        print(f"Area of the rectangle:{Rectangle.area(self)}")


class Parallelepiped(Rectangle):
    def __init__(self,length, width, height):
        Rectangle.__init__(self,length, width)
        self.height = height
        Rectangle.display(self)

    def volume_para(self):
        # Volume of Rectangular Parallelepiped = Surface Area × Height
        v = self.length * self.width * self.height
        return v

    def display_volume(self):
        print(f"volume of Parallelepiped:{self.volume_para()}")


p1 = Parallelepiped(2, 2, 3)
r1 = Rectangle(2,2)
r1.perimeter()
r1.area()
p1.display_volume()






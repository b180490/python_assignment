PI = 3.14

class Circle:
    def __init__(self,r):
        self.r = r

    def calc_area(self):
        self.area = PI * self.r * self.r
        print(f"Area of the circle is {self.area} ")
    def calc_perimeter(self):
        self.perimeter = 2 * PI * self.r
        print(f"Perimieter o circle is {self.perimeter} ")

c1 = Circle(5)
c1.calc_area()
c1.calc_perimeter()
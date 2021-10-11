class polygon():
    def __init__(self, x, y, side, n):
        self.x = x
        self.y = y
        self.side = side
        self.n = n
        self.interior_angle = (n-2)*180/n
        self.switchangle = TWO_PI/n
        self.vertices = [(x, y)]

        i=0
        while i<TWO_PI:
            self.x += cos(i)*self.side
            self.y += sin(i)*self.side    
            self.vertices.append((self.x, self.y))
            i+=self.switchangle
        print(self.vertices)
    
    def show(self):
        noStroke()
        fill(255, 0, 0)
        beginShape()
        for i in range(len(self.vertices) - 1):
            vertex(self.vertices[i][0] , self.vertices[i][1])
        endShape()
        
        
        
def setup():
    size(900,900)
    background(255)
    p1 = polygon(width/2, height/2, 100,10)    
    p1.show()
    
    
def draw():
    pass

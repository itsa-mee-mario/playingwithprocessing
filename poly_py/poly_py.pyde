
class polygon():
    def __init__(self, x, y, side, n):
        self.x = x
        self.y = y
        self.side = side
        self.n = n
        self.interior_angle = (n-2)*180/n
        self.switchangle = TWO_PI/n
        self.vertices = [(x, y)]
        self.new_vertices=[]

        i=0
        while i<TWO_PI:
            self.x += cos(i)*self.side
            self.y += sin(i)*self.side    
            self.vertices.append((self.x, self.y))
            i+=self.switchangle
    
        
    
    def show(self):
        noStroke()
        fill(255, 0, 0)
        beginShape()
        for i in range(len(self.new_vertices) - 1):
            vertex(self.new_vertices[i][0] , self.new_vertices[i][1])
        endShape()
    
    def deform(self, d, var, vdiv):
        sx2 = 0
        sy2 = 0
        self.new_vertices = []
        if not self.vertices:
            return new_vertices
        
        for i in range(len(self.vertices)-1):
            sx1 = self.vertices[i][0]
            sy1 = self.vertices[i][1]
            
            sx2 = self.vertices[i+1][0]
            sy2 = self.vertices[i+1][1]
            
            self.new_vertices.append((sx1, sy1))
            self.subdivide( sx1, sy1, sx2, sy2, d, var, vdiv)

        return self.new_vertices
            
    
    def subdivide(self, x1, y1, x2, y2, d, var, vdiv):
        if d>=0:
            midx = (x1+x2)/2
            midy = (y1+y2)/2
            nx = midx + randomGaussian()* var
            ny = midy + randomGaussian()* var
            self.subdivide( x1, y1, nx, ny, d-1, var/vdiv, vdiv)
            self.new_vertices.append((nx, ny))
            self.subdivide( nx, ny, x2, y2, d-1, var/vdiv, vdiv)

grid = []

def setup():
    photo = loadImage("data.jpg")
    photo.resize(1800,900)
    image(photo, 0,0)
    size(1800,900)
    background(0)
     
    for i in range(0, width, 25):
        row = []
        for j in range(0, height, 25):
            c = photo.get(int(i), int(j))
            row.append(c)
        grid.append(row)
    print(len(grid))
    # for p in range(20):
    for i in range(0, width, 25):
            for j in range(0, height, 25):
                fill(grid[i/25][j/25])
                stack = polystack(i, j, 10, 10)
                for m in stack: show(m); print(m)
            
    #         fill(c )
    #         stack = polystack(i, j, 5, 10)
    #         for m in stack: show(m)
    # saveFrame()
    # base = create_base_polygon(width/2, height/2, 100,10)  
    # variation = base.deform(5, 30, 5)
    # base.show()

 
 
def create_base_polygon(x, y, r, nsides, show=False):
    bp = polygon(x, y, r, nsides)    
    bp.deform(7, 30, 5)
    if show:
        bp.show()
    return bp



def polystack(x, y, r, nsides):
    stack = []
    for i in range(25):
        base_poly = polygon(x+ random(-1,1)  , y+ random(-1,1) , r, nsides)
        poly = base_poly.deform(5, random(0, 5), 10)
        
        stack.append(poly)
    return stack

def show(v):
    noStroke()
    # fill(255, 0, 0, 7)
    beginShape()
    for i in range(len(v)):
        vertex(v[i][0] , v[i][1])
    endShape()
    
    
    
    
def draw():
    pass
    # background(255)
    # noStroke()
    # fill(random(255), random(255),random(255), 5)
    # stack = polystack(width/2, height/2, 100, 10)
    # for i in stack: show(i); print(i)

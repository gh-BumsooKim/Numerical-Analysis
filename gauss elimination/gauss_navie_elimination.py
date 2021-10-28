"""
Naive Gauss Elimination
"""

try:
    import argparse
    import time
    import numpy as np
except ModuleNotFoundError as e:
    print("Library can not imported with error :", e)

parser = argparse.ArgumentParser(description='Gauss Elimination')
parser.add_argument('--path', type=str, help="input file path including \
                    linear system Ax = b", default = None)
args = parser.parse_args()

def GaussNaive(mat: list):
    start_time: float = time.time()
    
    mat = np.array(mat, dtype="float64")
    row, col = mat.shape
    
    # upper triangly matrix
    for i in range(0, row-1):
        global _f
        _f = mat[i+1:, i] / mat[i, i]
                
        for j in range(i+1, row):
            mat[j] -=  mat[i] * _f[j-i-1]

    # root 
    _x = np.zeros(row, dtype="float64")    
    for i in range(row, 0, -1):
        
        _x_a: float = 0
        for j in range(i, col-1):
            _x_a += _x[j] * mat[i-1, j]
        
        _x[i-1] = (mat[i-1, -1] - _x_a)/ mat[i-1, i-1]
        
    end_time: float = time.time() - start_time
    
    return mat, _x, end_time
    
def main():
    
    if args.path == None:
        PATH = "matrix.txt"
    else:
        PATH = args.path
        
    with open(PATH) as f:
        lines = f.readlines()
        
        A, b = lines[0:-1], lines[-1]
        
    Aug = list()
    for i in range(len(A)):
        line = A[i]
        line = line.replace("\n", "").split(" ")
                
        Aug.append(line)
        
    b = b.replace("\n", "").split(" ")
    for i in range(len(b)):
        Aug[i].append(b[i])
        
    mat, x, t = GaussNaive(Aug)
    
    print("Upper Triangular Matrix :\n", mat)
    print("Root :\n", x)
    print("Processing Time :\n", t)
    
if __name__ == "__main__":
    main()

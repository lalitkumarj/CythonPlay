# testloop.pyx
# cython: profile=True

import cython

cdef tryc_c():
    cdef int z[50*50*50]
    cdef int i,j,k
    cdef int t = 0
    for i in range(50):
        for j in range(50):
            for k in range(50):
                z[t] = i+j+k
                t+=1
    return z

def tryc():
    tryc_c()

#! python2
# -*- coding: utf-8 -*-
class Solution:
    """
    @param: A: an integer rotated sorted array
    @param: target: an integer to be searched
    @return: an integer
    """
    def search(self, A, target):
        # write your code here
        l, h = 0, len(A) - 1
        while (l <= h):
            m = l + ((h - l) >> 1)
            if A[m] == target:
                return m
            elif (A[m] > A[l] and target < A[m] and target >= A[l]) or (A[m] < A[l] and not (target <= A[h] and target > A[m])):
                h = m - 1
            else:
                l = m + 1
        return -1

if __name__ == "__main__":
    A=[4, 5, 1, 2, 3]
    print(Solution().search(A),1)
    #return 2
    print(Solution().search(A),0)
    #return -1

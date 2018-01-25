#! python2
# -*- coding: utf-8 -*-
class Solution:
    """
    @param: A: An integers array.
    @return: return any of peek positions.
    """
    def findPeak(self, A):
        # write your code here
        if A is None:
            return -1

        start, end = 0, len(A)
        while start + 1 < end:
            mid = start + (end-start) / 2
            if A[mid] < A[mid+1]:
                start = mid
            else:
                end = mid

        return end


if __name__ == "__main__":
    A=[1, 2, 1, 3, 4, 5, 7, 6]
    print(Solution().findPeak(A))

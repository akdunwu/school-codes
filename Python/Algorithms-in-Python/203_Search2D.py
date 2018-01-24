#! python2
# -*- coding: utf-8 -*-

class Solution:
    """
    @param: matrix: matrix, a list of lists of integers
    @param: target: An integer
    @return: a boolean, indicate whether matrix contains target
    """
    def searchMatrix(self, matrix, target):
        # write your code here
        if len(matrix) == 0:
            return False

        n, m = len(matrix), len(matrix[0])
        start, end = 0, n * m - 1
        while start + 1 < end:
            mid = (start + end) / 2
            x, y = mid / m, mid % m
            if matrix[x][y] < target:
                start = mid
            else:
                end = mid
        x, y = start / m, start % m
        if matrix[x][y] == target:
            return True

        x, y = end / m, end % m
        if matrix[x][y] == target:
            return True

        return False

if __name__ == "__main__":
    A=[[1, 3, 5, 7],
        [10, 11, 16, 20],
        [23, 30, 34, 50]]
    print Solution().searchMatrix(A,A[2][0])

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


if __name__ == "__main__":
    A=[4, 5, 1, 2, 3]
    print(Solution().search(A),1)
    #return 2
    print(Solution().search(A),0)
    #return -1

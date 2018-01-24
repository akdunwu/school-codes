#! python2
# -*- coding: utf-8 -*-

'''
Given a target number and an integer array A sorted in ascending order, find the index i in A such that A[i] is closest to the given target.
Return -1 if there is no element in the array.

Example
Given [1, 2, 3] and target = 2, return 1.
Given [1, 4, 6] and target = 3, return 1.
Given [1, 4, 6] and target = 5, return 1 or 2.
Given [1, 3, 3, 4] and target = 2, return 0 or 1 or 2.
'''

class Solution:
    """
    @param: A: an integer array sorted in ascending order
    @param: target: An integer
    @return: an integer
    """
    def closestNumber(self, nums, target):
        # write your code here
        if nums is None:
            return -1

        start, end = 0, len(nums)-1

        while start + 1 < end :
            mid = ( start + end ) / 2
            if nums[mid] < target:
                start = mid
            else:
                end = mid

        if nums[end] - target <= target - nums [start]:
            return end
        else:
            return start


if __name__ == "__main__":
    A=[1,3,3,4,5]
    print Solution().closestNumber(A,4)

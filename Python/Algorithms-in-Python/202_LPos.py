#! python2
# -*- coding: utf-8 -*-

class Solution:
    """
    @param: nums: An integer array sorted in ascending order
    @param: target: An integer
    @return: An integer
    """
    def lastPosition(self, nums, target):
        # write your code here

        if nums is None:
            return -1

        if not nums:
            return -1

        start, end = 0,len(nums)-1

        while start + 1 < end:
            mid = (start + end) / 2
            if nums[mid] <= target:
                start = mid
            else:
                end = mid

        if nums[end] == target:
            return end
        elif nums[start] == target:
            return start
        else:
            return -1

if __name__ == "__main__":
    A=[1,2,2,4,5,5]
    print Solution().lastPosition(A,2)

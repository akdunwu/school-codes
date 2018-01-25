#! python2
# -*- coding: utf-8 -*-

class Solution:
    """
    @param: nums: a rotated sorted array
    @return: the minimum number in the array
    """
    def findMin(self, nums):
        # write your code here
        if len(nums) == 0:
            return 0

        start, end = 0, len(nums) - 1
        target = nums[-1]
        while start + 1 < end:
            mid = (start + end) / 2
            if nums[mid] <= target:
                end = mid
            else:
                start = mid
        return min(nums[start], nums[end])





if __name__ == "__main__":
    A=[4,5,6,7,-2,1,2]
    print(Solution().findMin(A))

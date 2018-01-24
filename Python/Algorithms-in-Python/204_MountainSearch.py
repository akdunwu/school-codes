#! python2
# -*- coding: utf-8 -*-

class Solution:
    """
    @param: nums: a mountain sequence which increase firstly and then decrease
    @return: then mountain top
    """
    def mountainSequence(self, nums):
        # write your code here
        if nums is None:
            return -1

        if not nums:
            return -1

        start, end = 0, len(nums) - 1
        while start + 1 < end:
            mid = (start + end)/2
            if nums[mid] > nums[start]:
                if nums[mid+1] > nums[mid]:
                    start = mid

            if nums[mid] > nums[end]:
                if nums[mid] > nums[mid+1]:
                    end = mid

        if nums[start] > nums[end]:
            return nums[start]
        else:
            return nums[end]

if __name__ == "__main__":
    A=[1, 2, 4, 8, 6, 3]
    print Solution().mountainSequence(A)

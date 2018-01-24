class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        hash={}
        for i in range(len(nums)):
            if target-nums[i] in hash:
                return [hash[target-nums[i]]+1,i+1];
            hash[nums[i]]=i
        print (hash)


if __name__ == '__main__':
    print (Solution().twoSum((2, 7, 11, 15), 9))

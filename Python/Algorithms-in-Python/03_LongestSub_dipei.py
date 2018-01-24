# -*- coding: utf-8 -*-
class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        if len(s)<=1:
            return len(s)
        else:
            ind=[]
            seg=[]
            for i in range(len(s)):
                temp=""
                j=i
                while s[j] not in temp:
                    temp+=s[j]
                    j+=1
                    if j==len(s):
                        break
                ind.append(i)
                seg.append(len(temp))
            return ind,seg

#Test modulus:
if __name__ == '__main__':
    #a="absabcokjspwhsnjjdhshs"
    a="asjrgapa"
    b,c=Solution().lengthOfLongestSubstring(a)
    print(b)
    print(c)

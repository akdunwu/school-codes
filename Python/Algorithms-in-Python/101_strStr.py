#! python2
# -*- coding: utf-8 -*-
class Solution:
    """
    @param: source: source string to be scanned.
    @param: target: target string containing the sequence of characters to match
    @return: a index to the first occurrence of target in source, or -1  if target is not part of source.
    """
    def strStr(self, source, target):
        # write your code here
        if source is None or target is None:
            return -1

        if len(source) < len(target):
            return -1

        for i in range(len(source)-len(target)+1):
            flag = 0
            for j in range(len(target)):
                if source[i+j] != target[j]:
                    flag = 1
                    break

            if flag == 1:
                continue
            else:
                return i

        return -1



if __name__ == "__main__":
    print Solution().strStr("abcdabcdefg", "bcd")

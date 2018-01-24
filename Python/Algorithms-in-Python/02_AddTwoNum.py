# Definition for singly-linked list.
class ListNode(object):
     def __init__(self, x):
         self.val = x
         self.next = None

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """

        dummy = ListNode(0)
        current, carry = dummy, 0

        while l1 or l2:
            val = carry
            if l1:
                val += l1.val
                l1 = l1.next
            if l2:
                val += l2.val
                l2 = l2.next
            carry, val = val / 10, val % 10
            current.next = ListNode(val)
            current = current.next

        if carry == 1:
            current.next = ListNode(1)

        return dummy.next
'''
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """

        v1=ListNode2Num(l1)
        v2=ListNode2Num(l2)
        vSum=v1+v2
        result=Num2ListNode(vSum)
        return result

def ListNode2Num(l):
        #l is a ListNode object.
        decimal=1
        value=0
        temp=l
        while not(temp.next is None):
            value=value+temp.val*decimal
            decimal=decimal*10
            temp=temp.next
        else:
            value=value+temp.val*decimal

        return value

def Num2ListNode(num):
        residual=0
        temp=num
        result=ListNode(0)
        outTemp=result

        if temp is not 0:
            while temp is not 0:
                temp,residual=temp//10,temp%10
                outTemp.next=ListNode(residual)
                outTemp=outTemp.next
        else:
            outTemp.next=ListNode(0)

        return result.next
'''

#Testing codes:
if __name__ == '__main__':
    a, a.next, a.next.next, a.next.next.next = ListNode(3), ListNode(5), ListNode(8), ListNode(5)
    b, b.next, b.next.next = ListNode(5), ListNode(6), ListNode(4)
    result = Solution().addTwoNumbers(a, b)
print "{0} -> {1} -> {2}".format(result.val, result.next.val, result.next.next.val)
#print(ListNode2Num(result))

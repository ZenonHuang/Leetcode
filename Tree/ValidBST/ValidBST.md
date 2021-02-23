## 验证二叉搜索树

给定一个二叉树，判断其是否是一个有效的二叉搜索树。

假设一个二叉搜索树具有如下特征：

节点的左子树只包含小于当前节点的数。
节点的右子树只包含大于当前节点的数。
所有左子树和右子树自身必须也是二叉搜索树。

示例 1:

```
输入:
    2
   / \
  1   3

输出: true
```


示例 2:

```
输入:
    5
   / \
  1   4
     / \
    3   6
输出: false
解释: 输入为: [5,1,4,null,null,3,6]。
     根节点的值为 5 ，但是其右子节点值为 4 。
```

## 思路

理解好二叉搜索树的定义，很重要:

> 如果该二叉树的左子树不为空，则**左子树上所有节点的值均小于它的根节点的值**； 若它的右子树不空，则右子树上**所有节点的值均大于它的根节点的值**；它的左右子树也为二叉搜索树。

像这样一个判例：

```
输入:
    5
   / \
  4   8
     / \
    2   10
```

虽然  8 作为根节点，4<8<10 是对的。但是 **2 < 5** 了。输出是 false。

**不能单纯的比较左节点小于中间节点，右节点大于中间节点**。

比较条件应该是：

**左子树所有节点小于中间节点，右子树所有节点大于中间节点**

具体的解决方式有两种：

- 中序遍历
- 递归法

### 中序遍历

中序遍历是深度遍历的一种方式。这里比较推荐中序遍历，更直观，也很好利用了 BST 的定义来做验证。

BST 如果使用中序遍历的方式  ，得到结果一定是有序的 (gif 直接搬运 leetcode)：

<img src="https://zenon-1255868537.cos.ap-guangzhou.myqcloud.com/blogPicture/20210223075948.gif?imageMogr2/thumbnail/!50p" />

中序遍历时判断当前节点是否大于中序遍历的前一个节点，也就是判断是否有序，如果不大于直接返回 false。

而中序遍历的思路也有两种写法

- 中序遍历 - 非递归
- 中序遍历 - 递归



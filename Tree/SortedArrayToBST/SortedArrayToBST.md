## 将有序数组转换为二叉搜索树

给你一个整数数组 nums ，其中元素已经按 升序 排列，请你将其转换为一棵 高度平衡 二叉搜索树。

高度平衡 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树。

示例 1：

![](https://zenon-1255868537.cos.ap-guangzhou.myqcloud.com/blogPicture/20210223230457.png)

```
输入：nums = [-10,-3,0,5,9]
输出：[0,-3,9,-10,null,5]
解释：[0,-10,5,null,-3,null,9]
```

![](https://zenon-1255868537.cos.ap-guangzhou.myqcloud.com/blogPicture/20210223230511.png)



 也将被视为正确答案。

示例 2：

![](https://zenon-1255868537.cos.ap-guangzhou.myqcloud.com/blogPicture/20210223230613.png)

```
输入：nums = [1,3]
输出：[3,1]
解释：[1,3] 和 [3,1] 
```

都是高度平衡二叉搜索树。


提示：

- 1 <= nums.length <= 104
- -104 <= nums[i] <= 104
- nums 按 严格递增 顺序排列。




## 思路

非常推荐这篇题解：

[将有序数组转换为二叉搜索树](https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/solution/jiang-you-xu-shu-zu-zhuan-huan-wei-er-cha-sou-s-33/)

维持一棵高度平衡的二叉树，从**中间**分开来做根节点。

主要在于选择的节点的策略（中间偏左节点/中间偏右节点/左右随机选择）





/* 
1. 3Sum Closest	
• 3 <= nums.length <= 1000
• -1000 <= nums[i], target <= 1000
• There is exactly one unique solution.
Find the sum of three integers such that the sum is closest to target. Return the sum itself.

*/

int threeSumClosest(List<int> nums, int target) {
  nums.sort();
  int minDifferance = 1000;
  int result = 0;

  for (int i = 0; i < nums.length - 2; i++) {
    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];
      int differance = (target - sum).abs();

      if (differance < minDifferance) {
        result = sum;
        minDifferance = differance;
      }

      if (sum < target)
        left++;
      else if (sum > target)
        right--;
      else
        return sum;
    }
  }

  return result;
}

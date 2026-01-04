/*
3. 3Sum Smaller	
• 0 <= nums.length <= 3500
• -100 <= nums[i], target <= 100
Return the number of index triplets (i, j, k) such that nums[i] + nums[j] + nums[k] < target.
*/


int threeSumSmaller(List<int> nums, int target) {
  nums.sort();
  int count = 0;

  for (int i = 0; i < nums.length - 2; i++) {
    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];
      if (sum < target) {
        count += (right - left);
        left++;
      } else {
        right--;
      }
    }
  }
  return count;
}

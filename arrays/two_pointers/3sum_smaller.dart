int threeSumSmallerAI(List<int> nums, int target) {
  nums.sort();
  int count = 0;

  for (int i = 0; i < nums.length - 2; i++) {
    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int currentSum = nums[i] + nums[left] + nums[right];

      if (currentSum < target) {
        count += (right - left);
        left++;
      } else {
        right--;
      }
    }
  }

  return count;
}

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

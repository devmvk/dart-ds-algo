List<List<int>> fourSum(List<int> nums, int target) {
  nums.sort();
  List<List<int>> result = [];
  int length = nums.length;
  for (int i = 0; i < length - 3; i++) {
    BigInt iMinSum =
        BigInt.from(nums[i] + nums[i + 1] + nums[i + 2] + nums[i + 3]);
    BigInt iMaxSum = BigInt.from(
        nums[i] + nums[length - 1] + nums[length - 2] + nums[length - 3]);
    if (iMaxSum < BigInt.from(target) || i > 0 && nums[i] == nums[i - 1])
      continue;
    if (iMinSum > BigInt.from(target)) break;

    for (int j = i + 1; j < length - 2; j++) {
      BigInt jMinSum =
          BigInt.from(nums[i] + nums[j] + nums[j + 1] + nums[j + 2]);
      BigInt jMaxSum =
          BigInt.from(nums[i] + nums[j] + nums[length - 1] + nums[length - 2]);
      if (jMaxSum < BigInt.from(target) || j > i + 1 && nums[j] == nums[j - 1])
        continue;
      if (jMinSum > BigInt.from(target)) break;

      int left = j + 1;
      int right = length - 1;

      while (left < right) {
        BigInt sum = BigInt.from(nums[i] + nums[j] + nums[left] + nums[right]);

        if (sum == BigInt.from(target)) {
          result.add([nums[i], nums[j], nums[left], nums[right]]);

          while (left < right && nums[left] == nums[left + 1]) left++;
          while (left < right && nums[right] == nums[right - 1]) right--;

          left++;
          right--;
        } else if (sum < BigInt.from(target)) {
          left++;
        } else {
          right--;
        }
      }
    }
  }
  return result;
}

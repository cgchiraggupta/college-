def quicksort(arr):
    # Base case: arrays with 0 or 1 element are already sorted
    if len(arr) <= 1:
        return arr
    
    # Choose the pivot (using the last element)
    pivot = arr[-1]
    
    # Partition the array
    left = []    # Elements smaller than pivot
    right = []   # Elements larger than pivot
    
    # Iterate through all elements except the pivot
    for i in range(len(arr) - 1):
        if arr[i] <= pivot:
            left.append(arr[i])
        else:
            right.append(arr[i])
    
    # Recursively sort the left and right partitions and combine with pivot
    return quicksort(left) + [pivot] + quicksort(right)

# Example usage:
if __name__ == "__main__":
    # Test the quicksort function
    test_array = [64, 34, 25, 12, 22, 11, 90]
    sorted_array = quicksort(test_array)
    print(f"Original array: {test_array}")
    print(f"Sorted array: {sorted_array}")

#include <stdbool.h>
#include <stdio.h>

#define MAX_LEN 10

bool end_with_five(int x)
{
    return x % 10 == 5;
}

int fives_to_begin(int arr[MAX_LEN], int size)
{
    int p = 0;
    for (size_t i = 0; i < size; i++)
    {
        if (end_with_five(arr[i]))
        {
            int t = arr[p];
            arr[p] = arr[i];
            arr[i] = t;
            p++;
        }
    }
    return p;
}

void sort_descending(int arr[MAX_LEN], int start, int end)
{
    for (int i = start; i < end; i++)
    {
        for (int j = i + 1; j < end; j++)
        {
            if (arr[i] < arr[j])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

void sort(int arr[MAX_LEN], int size)
{
    int f = fives_to_begin(arr, size);
    sort_descending(arr, 0, f);
    sort_descending(arr, f, size);
}

void print_array(int arr[MAX_LEN], int size)
{
    for (int i = 0; i < size; i++)
    {
        printf("%d ", arr[i]);
    }
}

int main(void)
{
    int arr[MAX_LEN] = {0};
    int n, i = 0;
    printf("Input an array lengh (0 < x < 10): ");
    if (scanf("%d", &n) != 1 || n > MAX_LEN || n < 0)
    {
        printf("Invalid lengh of array!");
        return 1;
    }
    printf("Input %d elements (int) of array:\n", n);
    while (i < n)
    {
        scanf("%d", &arr[i]);
        i++;
    }
    printf("Array before:\n");
    print_array(arr, n);
    printf("\n");

    printf("Array after:\n");
    sort(arr, n);
    print_array(arr, n);

    return 0;
}

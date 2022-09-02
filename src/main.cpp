#include <iostream>
using namespace std;

int sumOf3BigNumberInArray(int *input, int length);

int main()
{
 int inputArray[] = {1, 3, 2, 7, 5};
 int result = sumOf3BigNumberInArray(inputArray, 5);
 cout << "Result:" << result;
 return 0;
}

int sumOf3BigNumberInArray(int *input, int length)
{
 int result = 0;
 int temp[10] = {0};

 if (length < 3)
  cout << "Array with lenght greater than 3 required !";

 for (int i = 0; i < length; i++)
 {
  for (int j = 0; j < i; j++)
  {
   if (input[j] < input[i])
   {
    int tempVar = input[j];
    input[j] = input[i];
    input[i] = tempVar;
   }
  }
 }

 result = input[0] + input[1] + input[2];

 return result;
}
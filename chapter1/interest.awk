{
  printf("\t%.2f\n", $1)
  for (i = 1; i <= $3; i++)
    printf("\t%.2f\n", $1 * (1 + $2) ^ i)
}
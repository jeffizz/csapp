long rsum(long *start, long count)
{
    if (count <= 0)
        return 0;
    return *start + rsum(start+1, count-1);
}

void main()
{
    long start[4] = {1, 2, 3, 4};
    long count = 4;
    rsum(start, count);
}
def arraySubtraction(l1: list[int], l2: list[int]) -> list[int]:
    local_array = []

    for val in l1:
        if val not in l2:
            local_array.append(val)

    return list(set(local_array))


def main() -> None:
    print(arraySubtraction([1, 2, 3, 4, 5], [2, 3, 6]))
    print(arraySubtraction([1, 1, 1, 2, 2, 3, 3, 3, 4], [2, 5, 6, 7]))


if __name__ == '__main__':
    main()

# arraySubtraction([1,2,3,4,5], [2,3,6]) => [1,4,5]

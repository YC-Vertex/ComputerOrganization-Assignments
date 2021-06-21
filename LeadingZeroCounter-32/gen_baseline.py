for i in range(1,32):
    print(f'else if (Din[31:{31-i}] == {i+1}\'b1)')
    print(f'\tDout = 6\'d{i};')


def HanCarlson(targs):
    size = targs.get('size')
    hybrid = targs.get('hybrid')
    if (not size) or (not hybrid):
        return
    
    tree = []
    if size == 32 and hybrid == 2:
        seq = list(range(32, 0, -1)) # [32, 31, ..., 1]
        tree += [
            # BK * 2
            [i-1 if i%2==0 else -1 for i in seq],
            [i-2 if i%4==0 else -1 for i in seq],
            # KS * 3
            [i-4 if i%4==0 else -1 for i in seq[:-4]] + [-1]*4,
            [i-4 if i%4==0 else -1 for i in seq[:-8]] + [-1]*8,
            [i-4 if i%4==0 else -1 for i in seq[:-16]] + [-1]*16,
            # iBK * 2
            [-1]*2 + [i-2 if i%4==2 else -1 for i in seq[2:-4]] + [-1]*4,
            [-1]*1 + [i-1 if i%2==1 else -1 for i in seq[1:-2]] + [-1]*2,
        ] 
        return tree
    else:
        # unimplemented
        return


def KoggeStone(targs):
    # unimplemented
    pass


def BrentKung(targs):
    # unimplemented
    pass


class GPTree:

    tree = None

    switch = {
        'Kogge-Stone':  KoggeStone,
        'Brent-Kung':   BrentKung,
        'Han-Carlson':  HanCarlson
    }

    def __init__(self, ttype = str(), targs = dict()):
        treeGenFunc = self.switch.get(ttype)
        if treeGenFunc:
            self.tree = treeGenFunc(targs)
        else:
            pass

    def __str__(self):
        s = ''
        for row in self.tree:
            s += f'['
            for col in row:
                s += f'{col:2d}  '
            s += f']\n'
        return s


class VerilogGen:

    tree = None
    file = 'GPTree.v'
    dotop = 'DotOp'
    header = (
        '`include \"DotOp.v\"\n\n'
        'module GPTree (\n'
        '    input   wire [32:1] G_0,\n'
        '    input   wire [32:1] P_0,\n'
        '    input   wire    ci,\n'
        '    output  wire [32:1] co\n'
        ');\n'
        '\n'
        '    wire [32:1] Gf; // final G, G_{i:1}\n'
        '    wire [32:1] Pf; // final P, P_{i:1}\n'
    )
    footer = (
        '    generate\n'
        '        genvar i;\n'
        '        for (i = 1; i <= 32; i = i + 1) begin: co_gen\n'
        '            assign co[i] = Gf[i] | (Pf[i] & ci);\n'
        '        end\n'
        '    endgenerate\n'
        '    \n'
        'endmodule\n'
    )
    content = ''

    def __init__(self, file = 'GPTree.v', ttype = 'Han-Carlson', targs = {'size': 32, 'hybrid': 2}):
        self.tree = GPTree(ttype, targs)
        self.file = file

    def generate(self):
        print(self.tree)

        print('Generating...')
        tree = self.tree.tree
        self.content = ''
        for i in range(len(tree)):
            self.content += (
                f'wire [32:1] G_{i+1};\n'
                f'wire [32:1] P_{i+1};\n'
            )
        for i, row in enumerate(tree):
            self.content += f'\n// tree level = {i+1}\n'
            for j, col in enumerate(row):
                self.content += f'// bit position = {32-j}\n'
                Go = f'G_{i+1}[{32-j}]'
                Po = f'P_{i+1}[{32-j}]'
                G1 = f'G_{i}[{32-j}]'
                P1 = f'P_{i}[{32-j}]'
                G2 = f'G_{i}[{col}]'
                P2 = f'P_{i}[{col}]'
                if col != -1:
                    self.content += f'{self.dotop} dotop_{i}_{j}({G1}, {P1}, {G2}, {P2}, {Go}, {Po});\n'
                else:
                    self.content += f'assign {Go} = {G1};\nassign {Po} = {P1};\n'

        self.content += f'\n// generate Gf and Pf\n'
        for i in range(32):
            G = f'G_{len(tree)}[{32-i}]'
            P = f'P_{len(tree)}[{32-i}]'
            Gf = f'Gf[{32-i}]'
            Pf = f'Pf[{32-i}]'
            self.content += f'assign {Gf} = {G}; assign {Pf} = {P};\n'

        self.content = (
            f'/* Header */\n'
            f'{self.header}\n'
            f'/* Content */\n'
            f'{self.content}\n'
            f'/* Footer */\n'
            f'{self.footer}\n'
        )

        print(f'Generated. Saving to {self.file}.')
        with open(self.file, 'w') as f:
            f.write(self.content)
        print(f'Saved to {self.file}. Job done.')


if __name__ == '__main__':
    vg = VerilogGen()
    vg.generate()
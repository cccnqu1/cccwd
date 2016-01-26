// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/DMux8Way.hdl

/**
 * 8-way demultiplexor:
 * {a, b, c, d, e, f, g, h} = {in, 0, 0, 0, 0, 0, 0, 0} if sel == 000
 *                            {0, in, 0, 0, 0, 0, 0, 0} if sel == 001
 *                            etc.
 *                            {0, 0, 0, 0, 0, 0, 0, in} if sel == 111
 */

CHIP DMux8Way {
    IN in, sel[3];
    OUT a, b, c, d, e, f, g, h;

    PARTS:
    Not(in=sel[2], out=nsel2);
    And(a=in, b=sel[2], out=s2h);
    And(a=in, b=nsel2,  out=s2l);
    DMux4Way(in=s2h, sel=sel[0..1], a=e, b=f, c=g, d=h);
    DMux4Way(in=s2l, sel=sel[0..1], a=a, b=b, c=c, d=d);
}
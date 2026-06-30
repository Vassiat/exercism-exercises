export class Matrix {
  protected rowsArray: number[][] = [];
  protected columnsArray: number[][] = [];

  constructor(str: string) {
    this.rowsArray = this.stringToRows(str);

    const numberColumns = this.rows.length;
    this.columnsArray = Array.from({ length: numberColumns }, (_, i) => {
        const ret: number[] = [];
         
        for (let x = 0; numberColumns > x; x++) {
          ret.push(this.rows[x][i]);       
        }
             
        return  ret;
    }).filter(arr => arr.some(Number) && arr.length);
  }

  get rows(): number[][] {
    return this.rowsArray;
  }

  get columns(): number[][] {
    return this.columnsArray;
  }

  protected stringToRows(str: string): number[][] {
    return str
      .split("\n")
      .map(arr => 
        arr.split(" ").filter(Number).map(Number)
      );
  }
}

const _ = new Matrix("1 2 3\n4 5 6 2\n7 8 9\n8 7 6\n 2");

console.log(_);

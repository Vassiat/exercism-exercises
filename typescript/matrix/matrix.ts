export class Matrix {
  protected rowsArray: number[][] = [];
  protected columnsArray: number[][] = [];

  constructor(str: string) {
    this.rowsArray = this.stringToRows(str);

    for (let i = 0; this.rows.length > i; i++) {
      const ret: number[] = [];

      const numberColumns = this.rows.length
      for (let x = 0; numberColumns > x; x++) {
        ret.push(this.rows[x][i]);
      }

      if (ret.some(Number)) {
        this.columnsArray.push(ret);
      }
    }
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

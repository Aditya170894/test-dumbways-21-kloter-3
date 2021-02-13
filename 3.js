function cetakPolaSegitigaPascalCustom(){
    let array = [];
    const length = 5;
    //pascal segitiga
    for (let i = 0; i <= length; i++) {
        let subArray = [];
        for (let j = 0; j <= i; j++) {
            if (j === 0 || j === i) {
                subArray.push(1)
            } else {
                subArray.push(array[i-1][j] + array[i-1][j-1]);
            }
        }
        array.push(subArray);
    }
    //cetak pola segitiga
    const mid = 5
    const symbol = {
        1: 'x',
        2: 'y',
        3: 'z',
        4: 'a',
        5: 'b',
        6: 'c',
        10: 'd'
    };
    for (let i = 0; i <= length; i++) {
        str = '';
        let j= 0;
        for (let k = 0; k <= 11; k++) {
            if (k === mid || (k >= mid - i && k < mid)) {
                str += symbol[array[i][j]] + ' ';
                
            j++;
            } else {
                str += ' ';
            }
        }
        console.log(str);
    }
    return array;
}

cetakPolaSegitigaPascalCustom()
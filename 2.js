function cekMedian(arr){

    let median = 0;
    arr.sort();

    if (arr.length % 2 === 0) {
        median = (arr[arr.length / 2 - 1] + [arr.length / 2] / 2);
    } else {
        median = arr[(arr.length - 1) / 2];
    }

return median;

}
console.log(cekMedian([0, 1, 2, 4, 6, 5, 3]))
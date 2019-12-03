'use strict';

function do_math(chain) {
    let words = chain.split(' ');

    let arr = [];
    for (const word of words) {
        const chars = word.match(/[a-zA-Z]+/g);
        arr.push({word: chars, num: parseInt(word.replace(chars[0], ''))})
    }

    arr.sort((a,b) => {
        if (a.word < b.word) {
            return -1;
        } else if (b.word < a.word) {
            return 1;
        } else {
            return 0;
        }
    });

    return arr;
}

function calc(arr) {
    // + - * /
    let result = arr[0].num;
    for (let i = 1; i < arr.length; i++) {
        switch (i % 4) {
            case 1:
                result += arr[i].num;
                break;
            case 2:
                result -= arr[i].num;
                break;
            case 3:
                result *= arr[i].num;
                break;
            case 0:
                result /= arr[i].num;
                break;
        }
    }
    return Math.round(result);
}

function init() {
    test(do_math('24z6 1x23 y369 89a 900b').map(elm => elm.num).join(' '), '89 900 123 369 246');
    test(do_math('10a 90x 14b 78u 45a 7b 34y').map(elm => elm.num).join(' '), '10 45 14 7 78 90 34');

    test(calc(do_math('24z6 1x23 y369 89a 900b')), 1299);
    test(calc(do_math('10a 90x 14b 78u 45a 7b 34y')), 60);
}

function test(got, expected) {
    if(got === expected) {
        console.log('OK got: ' + got + ' expected: ' + expected)
    } else {
        console.log('X got: ' + got + ' expected: ' + expected)
    }
}

init();

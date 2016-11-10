/**
 * Problem 1:
 *
 *  Time Complexity:
 *  Auxiliary Space Complexity: 
 **/

function isThereCat(obj) {

  while(obj['cat']) {
    console.log('There is cat!');
    delete obj['cat'];
  }
  console.log('There is no cat!');
}

Time: O(1) # all constant operations
Space: O(1)  #no new space




/**
 * Problem 2:
 *
 *  Time Complexity: 
 *  Auxiliary Space Complexity:  
 **/

function powerOfThrees(n) {
  var result = [];
  var count = 1;
  var temp = 1;

  while(count <= 3) {
    temp *= n;
    result.push(temp);
    count++;
  }

  return result;
}

O(1)
O(1)


/**
 * Problem 3:
 *
 *  Time Complexity: 
 *  Auxiliary Space Complexity: 
 **/

function intersectionPoints(arr1, arr2) {
  var result = [];
  var points;

  for (var i = 0; i < arr1.length; i++) {
    for (var j = 0; j < arr2.length; j++) {
      if (arr1[i] === arr2[j]) {
        points = [arr1[i], arr2[j]];
        result.push(points);
        points = [];
      }
    }
  }

  return result;
}
O(n*m)
O(n*m)



/**
 * Problem 4:
 *
 *  Time Complexity:
 *  Auxiliary Space Complexity:
 **/

function nthFibonacci(n) {
  var result = [0,1];

  for(var i = 1; i < n; i++) {
    result[i+1] = result[i] + result[i-1];
  }

  return result[n];
}

O(n)
O(n)



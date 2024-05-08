// FizzBuzz.test.js
import fizzBuzz from '../src/FIzzBuzz.js';

describe('FizzBuzz function', () => {
  test('returns "Fizz" when the number is divisible by 3', () => {
    expect(fizzBuzz(3)).toBe('Fizz');
    expect(fizzBuzz(6)).toBe('Fizz');
  });

  test('returns "Buzz" when the number is divisible by 5', () => {
    expect(fizzBuzz(5)).toBe('Buzz');
    expect(fizzBuzz(10)).toBe('Buzz');
  });

  

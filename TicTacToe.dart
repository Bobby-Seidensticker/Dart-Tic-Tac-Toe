#import('dart:html');

void main() {
  showMessage('Welcome to Dart!');
}

final int SIZE = 3;
final int SQUARE_SIZE = 100;

void showMessage(String message) {
  /*var textElement = query('#text');

  textElement.text = message;*/
  
  CanvasElement board = query('#board');
  var ctx = board.context2d;
  for (var i = 1; i < SIZE; i++) {
    ctx.moveTo(SQUARE_SIZE * i - 0.5, 0);
    ctx.lineTo(SQUARE_SIZE * i - 0.5, SIZE * SQUARE_SIZE);
    ctx.moveTo(0, SQUARE_SIZE * i - 0.5);
    ctx.lineTo(SIZE * SQUARE_SIZE, SQUARE_SIZE * i - 0.5);
    ctx.stroke();
  }
  
}

bool drawX(CanvasRenderingContext2d ctx, int x, int y, String color) {
  if (x >= SIZE || y >= SIZE || x < 0 || y < 0) {
    return false;
  }
}

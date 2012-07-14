#import('dart:html');

final int SIZE = 3;
final int SQUARE_SIZE = 100;
List<String> PLAYER_COLORS;



void main() {
  PLAYER_COLORS = new List<String>();
  PLAYER_COLORS.add('#f00');
  PLAYER_COLORS.add('#00f');
  
  CanvasElement board = query('#board');
  var ctx = board.context2d;
  for (var i = 1; i < SIZE; i++) {
    ctx.moveTo(SQUARE_SIZE * i - 0.5, 0);
    ctx.lineTo(SQUARE_SIZE * i - 0.5, SIZE * SQUARE_SIZE);
    ctx.moveTo(0, SQUARE_SIZE * i - 0.5);
    ctx.lineTo(SIZE * SQUARE_SIZE, SQUARE_SIZE * i - 0.5);
    ctx.stroke();
  }
  drawX(board, 0, 0, 0);
}

bool drawX(CanvasElement board, int x, int y, int player) {
  if (x >= SIZE || y >= SIZE || x < 0 || y < 0) {
    return false;
  }
  CanvasRenderingContext2D ctx = board.context2d;
  if (player == 0) {
    ctx.strokeStyle = "#00f";
  } else if (player == 1) {
    ctx.strokeStyle = '#f00';
  } else {
    return false;
  }
  ctx.moveTo(SQUARE_SIZE * x, SQUARE_SIZE * y);
  ctx.lineTo(SQUARE_SIZE * (x + 1), SQUARE_SIZE * (y + 1));
  ctx.moveTo(SQUARE_SIZE * (x + 1), SQUARE_SIZE * y);
  ctx.lineTo(SQUARE_SIZE * x, SQUARE_SIZE * (y + 1));
  ctx.stroke();
}

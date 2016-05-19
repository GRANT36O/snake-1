
public class Board {

	public int direction;
	public Cell[][] grid;
	
	public Board(int length, int width){
		for(Cell[] a : grid)
			for(Cell b : a)
				b = new Cell();
		
	}
	
}

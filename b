
	import java.awt.Canvas;
	import java.awt.Color;
	import java.awt.Dimension;
	import java.awt.Graphics2D;

	import javax.swing.JFrame;

	public class GameEngine extends GameBoard
	{

		public static void main(String[] args)
		{
			/*
			 * Create a new JFrame and set it's properties up.
			 */
			JFrame frame = new JFrame("Snake Game");
			frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			frame.setResizable(false);

			/*
			 * Create a new canvas, and set it's properties up.
			 */
			Canvas canvas = new Canvas();
			canvas.setBackground(Color.BLACK);
			canvas.setPreferredSize(
					new Dimension(GameBoard.MAP_SIZE * GameBoard.TILE_SIZE, GameBoard.MAP_SIZE * GameBoard.TILE_SIZE));
			/*
			 * Add the canvas to the frame.
			 */
			frame.add(canvas);

			/*
			 * Pack the frame, position it in the center of the screen, and then
			 * display it.
			 */
			frame.pack();
			frame.setLocationRelativeTo(null);
			frame.setVisible(true);

			/*
			 * Create the engine and start the game.
			 */
			GameEngine engine = new GameEngine(canvas);
			engine.startGame();

		}

		/*
		 * The canvas instance that we draw to.
		 */
		private Canvas canvas;

		/*
		 * Creates a new Engine instance.
		 * 
		 * @param canvas The canvas instance we're drawing onto.
		 */
		private GameEngine(Canvas canvas)
		{
			this.canvas = canvas;
			GameBoard gb = new GameBoard();
		}

		/*
		 * The number of times to update the game per second.
		 */
		private static final int UPDATES_PER_SECOND = 10;

		/**
		 * Responsible for setting up and retrieving the rendering context, then
		 * maintaining the game loop.
		 */
		public void startGame()
		{
			/*
			 * Create the buffers and get the graphics.
			 */
			canvas.createBufferStrategy(2);

			/*
			 * Grab a reference to the graphics object.
			 */
			Graphics2D g = (Graphics2D) canvas.getBufferStrategy().getDrawGraphics();

			/*
			 * Create the variables that keep the loop executing at a constant
			 * framerate.
			 */
			long start = 0L;
			long sleepDuration = 0L;

			/*
			 * The game loop will continue to click until the program ends.
			 */
			while (true)
			{

				/*
				 * Set the time that the loop started.
				 */
				start = System.currentTimeMillis();

				/*
				 * Update the game.
				 */
				update();

				/*
				 * Draw the game onto the graphics object.
				 */
				render(g);

				/*
				 * Display the graphics onto the screen.
				 */
				canvas.getBufferStrategy().show();

				/*
				 * Clear the screen so we draw a fresh frame next time.
				 */
				g.clearRect(0, 0, canvas.getWidth(), canvas.getHeight());
			}
		}

				

				

		/*
		 * Update the game's logic.
		 */
		private void update()
		{

		}

		/*
		 * Draw the game onto the graphics object.
		 */
		private void render(Graphics2D g)
		{
			draw(g);
		}

}


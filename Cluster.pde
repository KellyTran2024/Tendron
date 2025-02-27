public class Cluster {
    public final static int NUM_STEMS = 7;  //number of tendrils per cluster

    public Cluster(int len, int x, int y) {
       for (int i = 0; i < 5; i++) {
            double angle = i * ( 2* Math.PI / 5); 
            Tendril tendril = new Tendril(len, angle, x, y);
            tendril.show(); 
        }
    }
}

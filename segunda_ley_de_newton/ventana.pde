public static class Ventana
{
  public static int largoPx = 1280;
  public static int alturaPx = 720;
  public static int largoDeLaVentana = largoPx / 2;
  public static int altoDeLaVentana = alturaPx / 2;
  public static int parteSuperior = altoDeLaVentana;
  public static int parteInferior = -altoDeLaVentana;
  public static int parteIzquierda = -largoDeLaVentana;
  public static int parteDerecha = largoDeLaVentana;
  public static float eyeZ = -(alturaPx/2.0) / tan(PI*30.0 / 180.0);
}

{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (qgis.override {
      extraPythonPackages =
        ps: with ps; [
          numpy
          geopandas
          rasterio
        ];
    })
    # other packages
  ];
}

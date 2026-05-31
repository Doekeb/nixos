{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (qgis.override {
      extraPythonPackages =
        ps: with ps; [
          duckdb
          # numpy
          # geopandas
          # rasterio
        ];
    })
    # other packages
  ];
}

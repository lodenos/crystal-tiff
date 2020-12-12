module Tiff
  INTEL_BYTE_ORDER = Bytes.new "II".to_unsafe.as Pointer(UInt8), 2
  MOTOROLA_BYTE_ORDER = Bytes.new "MM".to_unsafe.as Pointer(UInt8), 2

  DESCRIPTIONS = [
    {
      "name" => [ "new", "subfile", "type" ],
      "tag" => 254,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "subfile", "type" ],
      "tag" => 255,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "image", "width" ],
      "tag" => 256,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "image", "length" ],
      "tag" => 257,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "bits", "per", "sample" ],
      "tag" => 258,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "compression" ],
      "tag" => 259,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "photometric", "interpretation" ],
      "tag" => 262,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "threshholding" ],
      "tag" => 263,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "cell", "width" ],
      "tag" => 264,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "cell", "length" ],
      "tag" => 265,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "fill", "order" ],
      "tag" => 266,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "document", "name" ],
      "tag" => 269,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "image", "description" ],
      "tag" => 270,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "make" ],
      "tag" => 271,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "model" ],
      "tag" => 272,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "strip", "offsets" ],
      "tag" => 273,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "orientation" ],
      "tag" => 274,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "samples", "per", "pixel" ],
      "tag" => 277,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "rows", "per", "strip" ],
      "tag" => 278,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "strip", "byte", "counts" ],
      "tag" => 279,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "min", "sample", "value" ],
      "tag" => 280,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "max", "sample", "value" ],
      "tag" => 281,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "x", "resolution" ],
      "tag" => 282,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "y", "resolution" ],
      "tag" => 283,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "planar", "configuration" ],
      "tag" => 284,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "page", "name" ],
      "tag" => 285,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "x", "position" ],
      "tag" => 286,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "y", "position" ],
      "tag" => 287,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "free", "offsets" ],
      "tag" => 288,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "free", "byte", "counts" ],
      "tag" => 289,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "gray", "response", "unit" ],
      "tag" => 290,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "gray", "response", "curve" ],
      "tag" => 291,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "t4", "options" ],
      "tag" => 292,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "t6", "options" ],
      "tag" => 293,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "resolution", "unit" ],
      "tag" => 296,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "page", "number" ],
      "tag" => 297,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "transfer", "function" ],
      "tag" => 301,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "software" ],
      "tag" => 305,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "date", "time" ],
      "tag" => 306,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "artist" ],
      "tag" => 315,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "host", "computer" ],
      "tag" => 316,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "predictor" ],
      "tag" => 317,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "white", "point" ],
      "tag" => 318,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "primary", "chromaticities" ],
      "tag" => 319,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "color", "map" ],
      "tag" => 320,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "halftone", "hints" ],
      "tag" => 321,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "tile", "width" ],
      "tag" => 322,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "tile", "length" ],
      "tag" => 323,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "tile", "offsets" ],
      "tag" => 324,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "tile", "byte", "counts" ],
      "tag" => 325,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "bad", "fax", "lines" ],
      "tag" => 326,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "clean", "fax", "data" ],
      "tag" => 327,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "consecutive", "bad", "fax", "lines" ],
      "tag" => 328,
      "type" => [ "SHORT", "LONG" ]
    },
    # {
    #   "name" => [ "sub", "ifds" ],
    #   "tag" => 330,
    #   "type" => [ "LONG", "IFD" ]
    # },
    {
      "name" => [ "ink", "set" ],
      "tag" => 332,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "ink", "names" ],
      "tag" => 333,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "number", "of", "inks" ],
      "tag" => 334,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "dot", "range" ],
      "tag" => 336,
      "type" => [ "BYTE", "SHORT" ]
    },
    {
      "name" => [ "target", "printer" ],
      "tag" => 337,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "extra", "samples" ],
      "tag" => 338,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "sample", "format" ],
      "tag" => 339,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "smin", "sample", "value" ],
      "tag" => 340,
      "type" => [ "BYTE", "SHORT", "LONG", "RATIONAL", "DOUBLE" ]
    },
    {
      "name" => [ "smax", "sample", "value" ],
      "tag" => 341,
      "type" => [ "BYTE", "SHORT", "LONG", "RATIONAL", "DOUBLE" ]
    },
    {
      "name" => [ "transfer", "range" ],
      "tag" => 342,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "clip", "path" ],
      "tag" => 343,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "x", "clip", "path", "units" ],
      "tag" => 344,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "y", "clip", "path", "units" ],
      "tag" => 345,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "indexed" ],
      "tag" => 346,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "tables" ],
      "tag" => 347,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "opi", "proxy" ],
      "tag" => 351,
      "type" => [ "SHORT" ]
    },
    # {
    #   "name" => [ "global", "parameters", "ifd" ],
    #   "tag" => 400,
    #   "type" => [ "LONG", "IFD" ]
    # },
    {
      "name" => [ "profile", "type" ],
      "tag" => 401,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "fax", "profile" ],
      "tag" => 402,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "coding", "methods" ],
      "tag" => 403,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "version", "year" ],
      "tag" => 404,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "mode", "number" ],
      "tag" => 405,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "decode" ],
      "tag" => 433,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "default", "image", "color" ],
      "tag" => 434,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "proc" ],
      "tag" => 512,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "interchange", "format" ],
      "tag" => 513,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "jpeg", "interchange", "format", "length" ],
      "tag" => 514,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "jpeg", "restart", "interval" ],
      "tag" => 515,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "lossless", "predictors" ],
      "tag" => 517,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "point", "transforms" ],
      "tag" => 518,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "jpeg", "q", "tables" ],
      "tag" => 519,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "jpeg", "dc", "tables" ],
      "tag" => 520,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "jpeg", "ac", "tables" ],
      "tag" => 521,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "y", "cb", "cr", "coefficients" ],
      "tag" => 529,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "y", "cb", "cr", "sub", "Sampling" ],
      "tag" => 530,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "y", "cb", "cr", "positioning" ],
      "tag" => 531,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "reference", "black", "white" ],
      "tag" => 532,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "strip", "row", "counts" ],
      "tag" => 559,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "xmp" ],
      "tag" => 700,
      "type" => [ "BYTE" ]
    },    
    # {
    #   "name" => [ "image", "rating" ],
    #   "tag" => 18246,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "rating", "percent" ],
    #   "tag" => 18249,
    #   "type" => []
    # },
    {
      "name" => [ "image", "id" ],
      "tag" => 32781,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "wang", "annotation" ],
      "tag" => 32932,
      "type" => [ "BYTE" ]
    },
    # {
    #   "name" => [ "cfa", "repeat", "pattern", "dim" ],
    #   "tag" => 33421,
    #   "type" => []
    # },
    # {
    #   "name" => [ "cfa", "pattern" ],
    #   "tag" => 33422,
    #   "type" => []
    # },
    # {
    #   "name" => [ "battery", "level" ],
    #   "tag" => 33423,
    #   "type" => []
    # },
    {
      "name" => [ "copyright" ],
      "tag" => 33432,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "exposure", "time" ],
      "tag" => 33434,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "f", "number" ],
      "tag" => 33437,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "md", "file",
      "tag" ],
      "tag" => 33445,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "md", "scale", "pixel" ],
      "tag" => 33446,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "md", "color", "table" ],
      "tag" => 33447,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "md", "lab", "name" ],
      "tag" => 33448,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "md", "sample", "info" ],
      "tag" => 33449,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "md", "prep", "date" ],
      "tag" => 33450,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "md", "prep", "time" ],
      "tag" => 33451,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "md", "file", "units" ],
      "tag" => 33452,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "model", "pixel", "scale",
      "tag" ],
      "tag" => 33550,
      "type" => [ "DOUBLE" ]
    },
    {
      "name" => [ "iptcnaa" ],
      "tag" => 33723,
      "type" => [ "UNDEFINED", "BYTE" ]
    },
    {
      "name" => [ "ingr", "packet", "data",
      "tag" ],
      "tag" => 33918,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "ingr", "flag", "registers" ],
      "tag" => 33919,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "iras", "b", "transformation", "matrix" ],
      "tag" => 33920,
      "type" => [ "DOUBLE" ]
    },
    {
      "name" => [ "model", "tiepoint", "tag" ],
      "tag" => 33922,
      "type" => [ "DOUBLE" ]
    },
    # {
    #   "name" => [ "site" ],
    #   "tag" => 34016,
    #   "type" => []
    # },
    # {
    #   "name" => [ "color", "sequence" ],
    #   "tag" => 34017,
    #   "type" => []
    # },
    # {
    #   "name" => [ "it8", "header" ],
    #   "tag" => 34018,
    #   "type" => []
    # },
    # {
    #   "name" => [ "raster", "padding" ],
    #   "tag" => 34019,
    #   "type" => []
    # },
    # {
    #   "name" => [ "bits", "per", "run", "length" ],
    #   "tag" => 34020,
    #   "type" => []
    # },
    # {
    #   "name" => [ "bits", "per", "extended", "run", "length" ],
    #   "tag" => 34021,
    #   "type" => []
    # },
    # {
    #   "name" => [ "color", "table" ],
    #   "tag" => 34022,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "color", "indicator" ],
    #   "tag" => 34023,
    #   "type" => []
    # },
    # {
    #   "name" => [ "background", "color", "indicator" ],
    #   "tag" => 34024,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "color", "value" ],
    #   "tag" => 34025,
    #   "type" => []
    # },
    # {
    #   "name" => [ "background", "color", "value" ],
    #   "tag" => 34026,
    #   "type" => []
    # },
    # {
    #   "name" => [ "pixel", "intensity", "range" ],
    #   "tag" => 34027,
    #   "type" => []
    # },
    # {
    #   "name" => [ "transparency", "indicator" ],
    #   "tag" => 34028,
    #   "type" => []
    # },
    # {
    #   "name" => [ "color", "characterization" ],
    #   "tag" => 34029,
    #   "type" => []
    # },
    # {
    #   "name" => [ "hc", "usage" ],
    #   "tag" => 34030,
    #   "type" => []
    # },
    # {
    #   "name" => [ "trap", "indicator" ],
    #   "tag" => 34031,
    #   "type" => []
    # },
    # {
    #   "name" => [ "cmyk", "equivalent" ],
    #   "tag" => 34032,
    #   "type" => []
    # },
    # {
    #   "name" => [ "reserved" ],
    #   "tag" => 34033,
    #   "type" => []
    # },
    # {
    #   "name" => [ "reserved" ],
    #   "tag" => 34034,
    #   "type" => []
    # },
    # {
    #   "name" => [ "reserved" ],
    #   "tag" => 34035,
    #   "type" => []
    # },
    {
      "name" => [ "model", "transformation", "tag" ],
      "tag" => 34264,
      "type" => [ "DOUBLE" ]
    },
    {
      "name" => [ "photoshop" ],
      "tag" => 34377,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "exif", "ifd" ],
      "tag" => 34665,
      "type" => [ "LONG", "IFD" ]
    },
    {
      "name" => [ "inter", "color", "profile" ],
      "tag" => 34675,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "image", "layer" ],
      "tag" => 34732,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "geo", "key", "directory",
      "tag" ],
      "tag" => 34735,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "geo", "double", "params", "tag" ],
      "tag" => 34736,
      "type" => [ "DOUBLE" ]
    },
    {
      "name" => [ "geo", "ascii", "params", "tag" ],
      "tag" => 34737,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "exposure", "program" ],
      "tag" => 34850,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "spectral", "sensitivity" ],
      "tag" => 34852,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "gps", "info" ],
      "tag" => 34853,
      "type" => [ "LONG", "IFD" ]
    },
    {
      "name" => [ "iso", "speed", "ratings" ],
      "tag" => 34855,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "oecf" ],
      "tag" => 34856,
      "type" => [ "UNDEFINED" ]
    },
    # {
    #   "name" => [ "interlace" ],
    #   "tag" => 34857,
    #   "type" => []
    # },
    # {
    #   "name" => [ "time", "zone", "offset" ],
    #   "tag" => 34858,
    #   "type" => []
    # },
    # {
    #   "name" => [ "self", "time", "mode" ],
    #   "tag" => 34859,
    #   "type" => []
    # },
    # {
    #   "name" => [ "sensitivity", "type" ],
    #   "tag" => 34864,
    #   "type" => []
    # },
    # {
    #   "name" => [ "standard", "output", "sensitivity" ],
    #   "tag" => 34865,
    #   "type" => []
    # },
    # {
    #   "name" => [ "recommended", "exposure", "index" ],
    #   "tag" => 34866,
    #   "type" => []
    # },
    # {
    #   "name" => [ "iso", "speed" ],
    #   "tag" => 34867,
    #   "type" => []
    # },
    # {
    #   "name" => [ "iso", "speed", "latitude", "yyy" ],
    #   "tag" => 34868,
    #   "type" => []
    # },
    # {
    #   "name" => [ "iso", "Speed", "latitude", "zzz" ],
    #   "tag" => 34869,
    #   "type" => []
    # },
    {
      "name" => [ "hyla", "fax", "fax", "recv", "params" ],
      "tag" => 34908,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "hyla", "fax", "fax", "sub", "address" ],
      "tag" => 34909,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "hyla", "fax", "fax", "recv", "time" ],
      "tag" => 34910,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "exif", "version" ],
      "tag" => 36864,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "date", "time", "original" ],
      "tag" => 36867,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "date", "time", "digitized" ],
      "tag" => 36868,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "components", "configuration" ],
      "tag" => 37121,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "compressed", "bits", "per", "pixel" ],
      "tag" => 37122,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "shutter", "speed", "value" ],
      "tag" => 37377,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "aperture", "value" ],
      "tag" => 37378,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "frightness", "value" ],
      "tag" => 37379,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "exposure", "bias", "value" ],
      "tag" => 37380,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "max", "aperture", "value" ],
      "tag" => 37381,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "subject", "distance" ],
      "tag" => 37382,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "metering", "mode" ],
      "tag" => 37383,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "light", "source" ],
      "tag" => 37384,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "flash" ],
      "tag" => 37385,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "focal", "length" ],
      "tag" => 37386,
      "type" => [ "RATIONAL" ]
    },
    # {
    #   "name" => [ "flash", "energy" ],
    #   "tag" => 37387,
    #   "type" => []
    # },
    # {
    #   "name" => [ "spatial", "frequency", "response" ],
    #   "tag" => 37388,
    #   "type" => []
    # },
    # {
    #   "name" => [ "noise" ],
    #   "tag" => 37389,
    #   "type" => []
    # },
    # {
    #   "name" => [ "focal", "plane", "x", "resolution" ],
    #   "tag" => 37390,
    #   "type" => []
    # },
    # {
    #   "name" => [ "focal", "plane", "y", "resolution" ],
    #   "tag" => 37391,
    #   "type" => []
    # },
    # {
    #   "name" => [ "focal", "plane", "resolution", "unit" ],
    #   "tag" => 37392,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "number" ],
    #   "tag" => 37393,
    #   "type" => []
    # },
    # {
    #   "name" => [ "security", "classification" ],
    #   "tag" => 37394,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "history" ],
    #   "tag" => 37395,
    #   "type" => []
    # },
    # {
    #   "name" => [ "subject", "area" ],
    #   "tag" => 37396,
    #   "type" => [ "SHORT" ]
    # },
    # {
    #   "name" => [ "exposure", "index" ],
    #   "tag" => 37397,
    #   "type" => []
    # },
    # {
    #   "name" => [ "tiffep", "standard", "id" ],
    #   "tag" => 37398,
    #   "type" => []
    # },
    # {
    #   "name" => [ "sensing", "method" ],
    #   "tag" => 37399,
    #   "type" => []
    # },
    {
      "name" => [ "maker", "note" ],
      "tag" => 37500,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "user", "comment" ],
      "tag" => 37510,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "subsec", "time" ],
      "tag" => 37520,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "subsec", "time", "original" ],
      "tag" => 37521,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "subsec", "time", "digitized" ],
      "tag" => 37522,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "image", "source", "data" ],
      "tag" => 37724,
      "type" => [ "UNDEFINED" ]
    },
    # {
    #   "name" => [ "xp", "title" ],
    #   "tag" => 40091,
    #   "type" => []
    # },
    # {
    #   "name" => [ "xp", "comment" ],
    #   "tag" => 40092,
    #   "type" => []
    # },
    # {
    #   "name" => [ "xp", "author" ],
    #   "tag" => 40093,
    #   "type" => []
    # },
    # {
    #   "name" => [ "xp", "keywords" ],
    #   "tag" => 40094,
    #   "type" => []
    # },
    # {
    #   "name" => [ "xp", "subject" ],
    #   "tag" => 40095,
    #   "type" => []
    # },
    {
      "name" => [ "flashpix", "version" ],
      "tag" => 40960,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "color", "space" ],
      "tag" => 40961,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "pixel", "x", "dimension" ],
      "tag" => 40962,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "pixel", "y", "dimension" ],
      "tag" => 40963,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "related", "sound", "file" ],
      "tag" => 40964,
      "type" => [ "ASCII" ]
    },
    # {
    #   "name" => [ "interoperability", "ifd" ],
    #   "tag" => 40965,
    #   "type" => [ "LONG", "IFD" ]
    # },
    {
      "name" => [ "flash", "energy" ],
      "tag" => 41483,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "spatial", "frequency", "response" ],
      "tag" => 41484,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "focal", "plane", "x", "resolution" ],
      "tag" => 41486,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "focal", "plane", "y", "resolution" ],
      "tag" => 41487,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "focal", "plane", "resolution", "unit" ],
      "tag" => 41488,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "subject", "location" ],
      "tag" => 41492,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "exposure", "index" ],
      "tag" => 41493,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "sensing", "method" ],
      "tag" => 41495,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "file", "source" ],
      "tag" => 41728,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "scene",
      "type" ],
      "tag" => 41729,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "cfa", "pattern" ],
      "tag" => 41730,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "custom", "rendered" ],
      "tag" => 41985,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "exposure", "mode" ],
      "tag" => 41986,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "white", "balance" ],
      "tag" => 41987,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "digital", "zoom", "ratio" ],
      "tag" => 41988,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "focal", "length", "in", "35mm", "film" ],
      "tag" => 41989,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "scene", "capture",
      "type" ],
      "tag" => 41990,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "gain", "control" ],
      "tag" => 41991,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "contrast" ],
      "tag" => 41992,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "saturation" ],
      "tag" => 41993,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "sharpness" ],
      "tag" => 41994,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "device", "setting", "description" ],
      "tag" => 41995,
      "type" => [ "UNDEFINED" ]
    },
    {
      "name" => [ "subject", "distance", "range" ],
      "tag" => 41996,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "image", "unique", "id" ],
      "tag" => 42016,
      "type" => [ "ASCII" ]
    },
    # {
    #   "name" => [ "camera", "owner", "name" ],
    #   "tag" => 42032,
    #   "type" => []
    # },
    # {
    #   "name" => [ "body", "serial", "number" ],
    #   "tag" => 42033,
    #   "type" => []
    # },
    # {
    #   "name" => [ "lens", "specification" ],
    #   "tag" => 42034,
    #   "type" => []
    # },
    # {
    #   "name" => [ "lens", "make" ],
    #   "tag" => 42035,
    #   "type" => []
    # },
    # {
    #   "name" => [ "lens", "model" ],
    #   "tag" => 42036,
    #   "type" => []
    # },
    # {
    #   "name" => [ "lens", "serial", "number" ],
    #   "tag" => 42037,
    #   "type" => []
    # },
    {
      "name" => [ "gdal", "metadata" ],
      "tag" => 42112,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "gdal", "nodata" ],
      "tag" => 42113,
      "type" => [ "ASCII" ]
    },
    # {
    #   "name" => [ "pixel", "format" ],
    #   "tag" => 48129,
    #   "type" => []
    # },
    # {
    #   "name" => [ "transformation" ],
    #   "tag" => 48130,
    #   "type" => []
    # },
    # {
    #   "name" => [ "uncompressed" ],
    #   "tag" => 48131,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "type" ],
    #   "tag" => 48132,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "width" ],
    #   "tag" => 48256,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "height" ],
    #   "tag" => 48257,
    #   "type" => []
    # },
    # {
    #   "name" => [ "width", "resolution" ],
    #   "tag" => 48258,
    #   "type" => []
    # },
    # {
    #   "name" => [ "height", "resolution" ],
    #   "tag" => 48259,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "offset" ],
    #   "tag" => 48320,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "byte", "count" ],
    #   "tag" => 48321,
    #   "type" => []
    # },
    # {
    #   "name" => [ "alpha", "offset" ],
    #   "tag" => 48322,
    #   "type" => []
    # },
    # {
    #   "name" => [ "alpha", "byte", "count" ],
    #   "tag" => 48323,
    #   "type" => []
    # },
    # {
    #   "name" => [ "image", "bata", "discard" ],
    #   "tag" => 48324,
    #   "type" => []
    # },
    # {
    #   "name" => [ "alpha", "data", "discard" ],
    #   "tag" => 48325,
    #   "type" => []
    # },
    {
      "name" => [ "oce", "scanjob", "description" ],
      "tag" => 50215,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "oce", "application", "selector" ],
      "tag" => 50216,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "oce", "identification", "number" ],
      "tag" => 50217,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "oce", "image", "logic", "characteristics" ],
      "tag" => 50218,
      "type" => [ "ASCII" ]
    },
    # {
    #   "name" => [ "print", "image", "matching" ],
    #   "tag" => 50341,
    #   "type" => []
    # },
    {
      "name" => [ "dng", "version" ],
      "tag" => 50706,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "dng", "backward", "version" ],
      "tag" => 50707,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "unique", "camera", "model" ],
      "tag" => 50708,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "localized", "camera", "model" ],
      "tag" => 50709,
      "type" => [ "BYTE", "ASCII" ]
    },
    {
      "name" => [ "cfa", "plane", "Color" ],
      "tag" => 50710,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "cfa", "layout" ],
      "tag" => 50711,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "linearization", "table" ],
      "tag" => 50712,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "black", "level", "repeat", "dim" ],
      "tag" => 50713,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "black", "level" ],
      "tag" => 50714,
      "type" => [ "SHORT", "LONG", "RATIONAL" ]
    },
    {
      "name" => [ "black", "level", "delta", "h" ],
      "tag" => 50715,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "black", "level", "delta", "v" ],
      "tag" => 50716,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "white", "level" ],
      "tag" => 50717,
      "type" => [ "SHORT", "LONG" ]
    },
    {
      "name" => [ "default", "scale" ],
      "tag" => 50718,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "default", "crop", "origin" ],
      "tag" => 50719,
      "type" => [ "SHORT", "LONG", "RATIONAL" ]
    },
    {
      "name" => [ "default", "crop", "size" ],
      "tag" => 50720,
      "type" => [ "SHORT", "LONG", "RATIONAL" ]
    },
    {
      "name" => [ "color", "matrix", "1" ],
      "tag" => 50721,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "color", "matrix", "2" ],
      "tag" => 50722,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "camera", "calibration", "1" ],
      "tag" => 50723,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "camera", "calibration", "2" ],
      "tag" => 50724,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "reduction", "matrix", "1" ],
      "tag" => 50725,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "reduction", "matrix", "2" ],
      "tag" => 50726,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "analog", "balance" ],
      "tag" => 50727,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "as", "shot", "neutral" ],
      "tag" => 50728,
      "type" => [ "SHORT", "RATIONAL" ]
    },
    {
      "name" => [ "as", "shot", "white", "xy" ],
      "tag" => 50729,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "baseline", "exposure" ],
      "tag" => 50730,
      "type" => [ "SRATIONAL" ]
    },
    {
      "name" => [ "baseline", "noise" ],
      "tag" => 50731,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "baseline", "sharpness" ],
      "tag" => 50732,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "bayer", "green", "split" ],
      "tag" => 50733,
      "type" => [ "LONG" ]
    },
    {
      "name" => [ "linear", "response", "limit" ],
      "tag" => 50734,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "camera", "serial", "number" ],
      "tag" => 50735,
      "type" => [ "ASCII" ]
    },
    {
      "name" => [ "lens", "info" ],
      "tag" => 50736,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "chroma", "blur", "radius" ],
      "tag" => 50737,
      "type" => [ "RATIONAL" ]
    },
    {
      "name" => [ "anti", "alias", "strength" ],
      "tag" => 50738,
      "type" => [ "RATIONAL" ]
    },
    # {
    #   "name" => [ "shadow", "scale" ],
    #   "tag" => 50739,
    #   "type" => []
    # },
    {
      "name" => [ "dng", "private", "data" ],
      "tag" => 50740,
      "type" => [ "BYTE" ]
    },
    {
      "name" => [ "maker", "note", "safety" ],
      "tag" => 50741,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "calibration", "illuminant", "1" ],
      "tag" => 50778,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "calibration", "illuminant", "2" ],
      "tag" => 50779,
      "type" => [ "SHORT" ]
    },
    {
      "name" => [ "best", "quality", "scale" ],
      "tag" => 50780,
      "type" => [ "RATIONAL" ]
    },
    # {
    #   "name" => [ "raw", "data", "unique", "id" ],
    #   "tag" => 50781,
    #   "type" => []
    # },
    {
      "name" => [ "alias", "layer", "metadata" ],
      "tag" => 50784,
      "type" => [ "ASCII" ]
    },
    # {
    #   "name" => [ "original", "raw", "file", "data" ],
    #   "tag" => 50828,
    #   "type" => []
    # },
    # {
    #   "name" => [ "active", "area" ],
    #   "tag" => 50829,
    #   "type" => []
    # },
    # {
    #   "name" => [ "masked", "areas" ],
    #   "tag" => 50830,
    #   "type" => []
    # },
    # {
    #   "name" => [ "as", "shot", "icc", "profile" ],
    #   "tag" => 50831,
    #   "type" => []
    # },
    # {
    #   "name" => [ "as", "shot", "pre", "profile", "matrix" ],
    #   "tag" => 50832,
    #   "type" => []
    # },
    # {
    #   "name" => [ "current", "icc", "profile" ],
    #   "tag" => 50833,
    #   "type" => []
    # },
    # {
    #   "name" => [ "current", "pre", "profile", "matrix" ],
    #   "tag" => 50834,
    #   "type" => []
    # },
    # {
    #   "name" => [ "colorimetric", "reference" ],
    #   "tag" => 50879,
    #   "type" => []
    # },
    # {
    #   "name" => [ "camera", "calibration", "signature" ],
    #   "tag" => 50931,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "calibration", "signature" ],
    #   "tag" => 50932,
    #   "type" => []
    # },
    # {
    #   "name" => [ "extra", "camera", "profiles" ],
    #   "tag" => 50933,
    #   "type" => []
    # },
    # {
    #   "name" => [ "as", "shot", "profile", "name" ],
    #   "tag" => 50934,
    #   "type" => []
    # },
    # {
    #   "name" => [ "noise", "reduction", "applied" ],
    #   "tag" => 50935,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "name" ],
    #   "tag" => 50936,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "hue", "sat", "map", "dims" ],
    #   "tag" => 50937,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "hue", "sat", "map", "data", "1" ],
    #   "tag" => 50938,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "hue", "sat", "map", "data", "2" ],
    #   "tag" => 50939,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "tone", "curve" ],
    #   "tag" => 50940,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "embed", "policy" ],
    #   "tag" => 50941,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "copyright" ],
    #   "tag" => 50942,
    #   "type" => []
    # },
    # {
    #   "name" => [ "forward", "matrix", "1" ],
    #   "tag" => 50964,
    #   "type" => []
    # },
    # {
    #   "name" => [ "forward", "matrix", "2" ],
    #   "tag" => 50965,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "application", "name" ],
    #   "tag" => 50966,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "application", "version" ],
    #   "tag" => 50967,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "settings", "name" ],
    #   "tag" => 50968,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "settings", "digest" ],
    #   "tag" => 50969,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "color", "space" ],
    #   "tag" => 50970,
    #   "type" => []
    # },
    # {
    #   "name" => [ "preview", "date", "time" ],
    #   "tag" => 50971,
    #   "type" => []
    # },
    # {
    #   "name" => [ "raw", "image", "digest" ],
    #   "tag" => 50972,
    #   "type" => []
    # },
    # {
    #   "name" => [ "original", "raw", "file", "digest" ],
    #   "tag" => 50973,
    #   "type" => []
    # },
    # {
    #   "name" => [ "sub", "tile", "block", "size" ],
    #   "tag" => 50974,
    #   "type" => []
    # },
    # {
    #   "name" => [ "row", "interleave", "factor" ],
    #   "tag" => 50975,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "look", "table", "dims" ],
    #   "tag" => 50981,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "look", "table", "data" ],
    #   "tag" => 50982,
    #   "type" => []
    # },
    # {
    #   "name" => [ "opcode", "list", "1" ],
    #   "tag" => 51008,
    #   "type" => []
    # },
    # {
    #   "name" => [ "opcode", "list", "2" ],
    #   "tag" => 51009,
    #   "type" => []
    # },
    # {
    #   "name" => [ "opcode", "list", "3" ],
    #   "tag" => 51022,
    #   "type" => []
    # },
    # {
    #   "name" => [ "noise", "profile" ],
    #   "tag" => 51041,
    #   "type" => []
    # },
    # {
    #   "name" => [ "original", "default", "final", "size" ],
    #   "tag" => 51089,
    #   "type" => []
    # },
    # {
    #   "name" => [ "original", "best", "quality", "final", "size" ],
    #   "tag" => 51090,
    #   "type" => []
    # },
    # {
    #   "name" => [ "original", "default", "crop", "size" ],
    #   "tag" => 51091,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "hue", "sat", "map", "encoding" ],
    #   "tag" => 51107,
    #   "type" => []
    # },
    # {
    #   "name" => [ "profile", "look", "table", "encoding" ],
    #   "tag" => 51108,
    #   "type" => []
    # },
    # {
    #   "name" => [ "baseline", "exposure", "offset" ],
    #   "tag" => 51109,
    #   "type" => []
    # },
    # {
    #   "name" => [ "default", "black", "render" ],
    #   "tag" => 51110,
    #   "type" => []
    # },
    # {
    #   "name" => [ "new", "raw", "image", "digest" ],
    #   "tag" => 51111,
    #   "type" => []
    # },
    # {
    #   "name" => [ "raw", "to", "preview", "gain" ],
    #   "tag" => 51112,
    #   "type" => []
    # },
    # {
    #   "name" => [ "default", "user", "crop" ],
    #   "tag" => 51125,
    #   "type" => []
    # }
  ]

  {% begin %}
    {% for description in DESCRIPTIONS %}
      {% suffix = "" %}
      {% for name in description["name"] %}
        {% suffix = suffix + "_#{ name.upcase.id }" %}
      {% end %}
      TAG{{ suffix.id }} = {{ description["tag"] }}_u16
    {% end %}
  {% end %}

  TYPES = [
    [ 1, UInt8, "BYTE" ],
    [ 2, String, "ASCII" ],
    [ 3, UInt16, "SHORT" ],
    [ 4, UInt32, "LONG" ],
    [ 5, UInt64, "RATIONAL" ],
    [ 6, Int8, "SBYTE" ],
    [ 7, Bytes, "UNDEFINED" ],
    [ 8, Int16, "SSHORT" ],
    [ 9, Int32, "SLONG" ],
    [ 10, Int64, "SRATIONAL" ],
    [ 11, Float32, "FLOAT" ],
    [ 12, Float64, "DOUBLE" ]
  ]

  {% begin %}
    {% for type in TYPES %}  
      TYPE_{{ type[2].id }} = {{ type[0] }}_u16
    {% end %}
  {% end %}
end

# Polyline

Get array of coordinates from google encoded Polyline algorithm format

## Installation

- Import Polyline.swift to your project
- Import MapKit to build

### Requirements

- Xcode 6.4
- iOS 8.0+

## Usage

```Swift
for encodedPolyline in route?.polylines {

    let coordinates = Polyline.decodePolyline(encodedPolyline)

    mapView!.addPolyline(coordinates!)

}
```
Once you have array of coordinates, you can draw polyline overlay using the following function

```Swift
func addPolyline(coordinates: [CLLocationCoordinate2D]) {

    var coordinateArray = coordinates

    let polyline = MKPolyline(coordinates: &coordinateArray, count: coordinateArray.count)

    addOverlay(polyline)

}
```

## Encoded Polyline Algorithm Format

Polyline encoding is a lossy compression algorithm that allows you to store a series of coordinates as a single string. Point coordinates are encoded using signed values. If you only have a few static points, you may also wish to use the interactive [polyline encoding utility](https://developers.google.com/maps/documentation/utilities/polylineutility).

The encoding process converts a binary value into a series of character codes for ASCII characters using the familiar base64 encoding scheme: to ensure proper display of these characters, encoded values are summed with 63 (the ASCII character '?') before converting them into ASCII. The algorithm also checks for additional character codes for a given point by checking the least significant bit of each byte group; if this bit is set to 1, the point is not yet fully formed and additional data must follow.

Additionally, to conserve space, **points only include the offset from the previous point** (except of course for the first point). All points are encoded in Base64 as signed integers, as latitudes and longitudes are signed values. The encoding format within a polyline needs to represent two coordinates representing latitude and longitude to a reasonable precision. Given a maximum longitude of +/- 180 degrees to a precision of 5 decimal places (180.00000 to -180.00000), this results in the need for a 32 bit signed binary integer value.

Note that the backslash is interpreted as an escape character within string literals. Any output of this utility should convert backslash characters to double-backslashes within string literals.

### The steps for encoding such a signed value are specified below.

- [x] Take the initial signed value: 
```
-179.9832104
```
- [x] Take the decimal value and multiply it by 1e5, rounding the result:
```
-17998321
```
- [x] Convert the decimal value to binary. Note that a negative value must be calculated using its [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement) by inverting the binary value and adding one to the result:
```
00000001 00010010 10100001 11110001
11111110 11101101 01011110 00001110
11111110 11101101 01011110 00001111
```
- [x] Left-shift the binary value one bit:
```
11111101 11011010 10111100 00011110
```
- [x] If the original decimal value is negative, invert this encoding:
```
00000010 00100101 01000011 11100001
```
- [x] Break the binary value out into 5-bit chunks (starting from the right hand side):
```
00001 00010 01010 10000 11111 00001
```
- [x] Place the 5-bit chunks into reverse order:
```
00001 11111 10000 01010 00010 00001
```
- [x] OR each value with 0x20 if another bit chunk follows:
```
100001 111111 110000 101010 100010 000001
```
- [x] Convert each value to decimal:
```
33 63 48 42 34 1
```
- [x] Add 63 to each value:
```
96 126 111 105 97 64
```
- [x] Convert each value to its ASCII equivalent:
```
`~oia@
```

## More Details

- [Encoded Polyline Algorithm Format](https://developers.google.com/maps/documentation/utilities/polylinealgorithm?hl=en)

## Contact

Mohamed Salem
- [www.linkedin.com/machometus](https://eg.linkedin.com/in/machometus)
- [cpe.salem@gmail.com](mailto:cpe.salem@gmail.com)
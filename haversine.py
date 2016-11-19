"""This module calculates the great-circle distance between two points
on the Earth's surface using the haversine formula.
The default unit of the returned distance is kilometers, but can be
set to miles if desired.

>>> haversine((45.7597, 4.8422), (48.8567, 2.3508))
392.21671780659625
"""


from math import radians, cos, sin, asin, sqrt

AVG_EARTH_RADIUS = 6371  # in km


def haversine(point1, point2, earth_radius=None):
    """ Calculate the great-circle distance between two points on 
    the Earth's surface.

    Args:
        point1 (tuple): Contains the latitude and longitude of the first 
            point in decimal degrees.
        point2 (tuple): Contains the latitude and longitude of a second point
            in decimal degrees.
        earth_radius (Optional [float]): If given, the distance is calculated with this
            km value

    Returns:
        distance (float): The distance between two points in kilometers.
    """
    _calculate_with_earth_radius = AVG_EARTH_RADIUS if not earth_radius else earth_radius
    # Unpack latitude/longitude.
    lat1, lng1 = point1
    lat2, lng2 = point2
    
    # Convert all latitudes/longitudes from decimal degrees to radians.
    lat1, lng1, lat2, lng2 = map(radians, (lat1, lng1, lat2, lng2))

    # Calculate haversine.
    lat = lat2 - lat1
    lng = lng2 - lng1
    first_step = sin(lat / 2) ** 2 + cos(lat1) * cos(lat2) * sin(lng / 2) ** 2
    distance = 2 * _calculate_with_earth_radius * asin(sqrt(first_step))
    
    return distance  # in kilometers
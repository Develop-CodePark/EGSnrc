
###############################################################################
#
#  EGSnrc egs++ sample geometry
#  Copyright (C) 2015 National Research Council Canada
#
#  This file is part of EGSnrc.
#
#  EGSnrc is free software: you can redistribute it and/or modify it under
#  the terms of the GNU Affero General Public License as published by the
#  Free Software Foundation, either version 3 of the License, or (at your
#  option) any later version.
#
#  EGSnrc is distributed in the hope that it will be useful, but WITHOUT ANY
#  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#  FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for
#  more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with EGSnrc. If not, see <http://www.gnu.org/licenses/>.
#
###############################################################################
#
#  Author:          Reid Townson, 2016
#
#  Contributors:
#
###############################################################################
#
#  An example geometry of egs_genvelope.
#
#
###############################################################################


:start geometry definition:
    :start geometry:
        name        = my_box
        library     = egs_box
        box size    = 1 2 3
        :start media input:
            media = water
        :stop media input:
    :stop geometry:

    :start geometry:
        name        = g1
        library     = egs_spheres
        midpoint = 0 0 1
        radii = 0.3
        :start media input:
            media = air
        :stop media input:
    :stop geometry:

    :start geometry:
        name        = g2
        library     = egs_spheres
        midpoint = 0 0 -1
        radii = 0.3
        :start media input:
            media = air
        :stop media input:
    :stop geometry:

    :start geometry:
        name        = my_envelope
        library     = egs_genvelope
        base geometry = my_box

        # Inscribed geometries must be strictly inside the envelope
        # No touching of surfaces!
        inscribed geometries = g1 g2
    :stop geometry:

    simulation geometry = my_envelope

:stop geometry definition:

# VHDL Continous Integration Example
# Copyright (C) 2017  Mario Barbareschi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

add_vhdl_source(crossbar_1.vhd crossbar)
add_vhdl_source(crossbar_structure_1.vhd crossbar_structure)

add_dependencies(crossbar
                crossbar_structure
                Memristor_behavioral_Snider_internal_clock_noOutput
                Memristor_behavioral_Snider_internal_clock
                )

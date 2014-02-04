#----------------------------------*-sh-*--------------------------------------
# =========                 |
# \\      /  F ield         | foam-extend: Open Source CFD
#  \\    /   O peration     |
#   \\  /    A nd           | For copyright notice see file Copyright
#    \\/     M anipulation  |
#------------------------------------------------------------------------------
# License
#     This file is part of foam-extend.
#
#     foam-extend is free software: you can redistribute it and/or modify it
#     under the terms of the GNU General Public License as published by the
#     Free Software Foundation, either version 3 of the License, or (at your
#     option) any later version.
#
#     foam-extend is distributed in the hope that it will be useful, but
#     WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#     General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with foam-extend.  If not, see <http://www.gnu.org/licenses/>.
#
# File
#     etc/prefs.sh
#
# Description
#     Preset variables for the OpenFOAM configuration - POSIX shell syntax.
#
#     The prefs.sh file will be sourced by the OpenFOAM etc/bashrc when it is
#     found
#
#------------------------------------------------------------------------------

export FOAM_VERBOSE=1

# Specify system compiler
# ~~~~~~~~~~~~~~~~~~~~~~~
compilerInstall=System
WM_COMPILER=Gcc44
export PATH=$HOME/foam/foam-extend-3.0/linuxAMD64/binutils-2.20.90/bin:$PATH
# Specify system openmpi
# ~~~~~~~~~~~~~~~~~~~~~~
#
# Normally, you don't need to set more than these 3 env. variables
# The other openmpi related variables will be initialized using
# the command mpicc --showme:
#
#export WM_MPLIB=SYSTEMOPENMPI
#export OPENMPI_DIR=path_to_system_installed_openmpi
#export OPENMPI_BIN_DIR=$OPENMPI_DIR/bin
#
#export OPENMPI_LIB_DIR="`$OPENMPI_BIN_DIR/mpicc --showme:libdirs`"
#export OPENMPI_INCLUDE_DIR="`$OPENMPI_BIN_DIR/mpicc --showme:incdirs`"
#export OPENMPI_COMPILE_FLAGS="`$OPENMPI_BIN_DIR/mpicc --showme:compile`"
#export OPENMPI_LINK_FLAGS="`$OPENMPI_BIN_DIR/mpicc --showme:link`"

# Specify system installed ThirdParty packages/libraries
# NB: The packages installed under $WM_THIRD_PARTY_DIR
#     will always override these values.
#     So build your ThirdParty directory accordingly.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# System installed CUDA
export CUDA_SYSTEM=1
export CUDA_DIR=/global/software/cuda/5.5
export CUDA_BIN_DIR=$CUDA_DIR/bin
export CUDA_LIB_DIR=$CUDA_DIR/lib64
export CUDA_INCLUDE_DIR=$CUDA_DIR/include
export CUDA_ARCH=sm_20

# System installed Mesquite
#export MESQUITE_SYSTEM=1
#export MESQUITE_DIR=path_to_system_installed_mesquite
#export MESQUITE_BIN_DIR=$MESQUITE_DIR/bin
#export MESQUITE_LIB_DIR=$MESQUITE_DIR/lib
#export MESQUITE_INCLUDE_DIR=$MESQUITE_DIR/include

# System installed Metis
#export METIS_SYSTEM=1
#export METIS_DIR=path_to_system_installed_metis
#export METIS_BIN_DIR=$METIS_DIR/bin
#export METIS_LIB_DIR=$METIS_DIR/lib
#export METIS_INCLUDE_DIR=$METIS_DIR/include

# System installed ParMetis
#export PARMETIS_SYSTEM=1
#export PARMETIS_DIR=path_to_system_installed_parmetis
#export PARMETIS_BIN_DIR=$PARMETIS_DIR/bin
#export PARMETIS_LIB_DIR=$PARMETIS_DIR/lib
#export PARMETIS_INCLUDE_DIR=$PARMETIS_DIR/include

# System installed ParMGridgen
#export PARMGRIDGEN_SYSTEM=1
#export PARMGRIDGEN_DIR=path_to_system_installed_parmgridgen
#export PARMGRIDGEN_BIN_DIR=$PARMGRIDGEN_DIR/bin
#export PARMGRIDGEN_LIB_DIR=$PARMGRIDGEN_DIR/lib
#export PARMGRIDGEN_INCLUDE_DIR=$PARMGRIDGEN_DIR/include

# System installed Libccmio
#export LIBCCMIO_SYSTEM=1
#export LIBCCMIO_DIR=path_to_system_installed_libccmio
#export LIBCCMIO_BIN_DIR=$LIBCCMIO_DIR/bin
#export LIBCCMIO_LIB_DIR=$LIBCCMIO_DIR/lib
#export LIBCCMIO_INCLUDE_DIR=$LIBCCMIO_DIR/include

# System installed Scotch
#export SCOTCH_SYSTEM=1
#export SCOTCH_DIR=path_to_system_installed_scotch
#export SCOTCH_BIN_DIR=$SCOTCH_DIR/bin
#export SCOTCH_LIB_DIR=$SCOTCH_DIR/lib
#export SCOTCH_INCLUDE_DIR=$SCOTCH_DIR/include

# System installed CMake
#export CMAKE_SYSTEM=1
#export CMAKE_DIR=path_to_system_installed_cmake
#export CMAKE_BIN_DIR=$CMAKE_DIR/bin

# System installed Python
#export PYTHON_SYSTEM=1
#export PYTHON_DIR=path_to_system_installed_python
#export PYTHON_BIN_DIR=$PYTHON_DIR/bin

# System installed PyFoam
#export PYFOAM_SYSTEM=1
#export PYFOAM_DIR=path_to_system_installed_python
#export PYFOAM_BIN_DIR=$PYFOAM_DIR/bin

# System installed hwloc
#export HWLOC_SYSTEM=1
#export HWLOC_DIR=path_to_system_installed_hwloc
#export HWLOC_BIN_DIR=$HWLOC_DIR/bin

# System installed Qt
# This is the only package we assume is system installed by default.
# So we don't use a variable called QT_SYSTEM, but instead a variable
# called QT_THIRD_PARTY in order to override to the ThirdParty QT
# package.
#
# If you choose to use the system installed version of QT, keep
# the variable QT_THIRD_PARTY commented, and uncomment the initialization
# of the variable QT_DIR and QT_BIN_DIR. Make sure both variables are
# properly initialized.
#
# If you choose instead to use the ThirdParty version of QT, only uncomment
# the variable QT_THIRD_PARTY and set it to 1. Keep the initialization
# of the variables QT_DIR nd QT_BIN_DIR commented. The QT ThirdParty scripts
# will take care of setting the variables QT_DIR and QT_BIN_DIR to the
# proper values.
#
#export QT_THIRD_PARTY=1
export QT_DIR=/global/software/qt4/qt4.8.2
export QT_BIN_DIR=$QT_DIR/bin

# System installed ParaView
export PARAVIEW_SYSTEM=1
export PARAVIEW_DIR=$HOME/Paraview-4.1.0
export PARAVIEW_BIN_DIR=$PARAVIEW_DIR/bin

# System installed bison
#export BISON_SYSTEM=1

# System installed flex
#export FLEX_SYSTEM=1

# System installed m4
#export M4_SYSTEM=1

# Specify ParaView version
# ~~~~~~~~~~~~~~~~~~~~~~~~
#export ParaView_VERSION=git        # eg, cvs/git version
#export ParaView_MAJOR=3.7


# System identifier for the OpenFOAM CDash test harness on openfoam-extend
#
# By default, your system FQN/hostname will be used as the system identifier
# when publishing your test harness results on the OpenFOAM CDash server
# on openfoam-extend.
# You can override your identifier using this environment variable
#export CDASH_SUBMIT_LOCAL_HOST_ID=choose_your_CDash_system_identifer

# ----------------------------------------------------------------- end-of-file

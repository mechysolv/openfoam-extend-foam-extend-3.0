/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | foam-extend: Open Source CFD
   \\    /   O peration     |
    \\  /    A nd           | For copyright notice see file Copyright
     \\/     M anipulation  |
-------------------------------------------------------------------------------
License
    This file is part of foam-extend.

    foam-extend is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the
    Free Software Foundation, either version 3 of the License, or (at your
    option) any later version.

    foam-extend is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with foam-extend.  If not, see <http://www.gnu.org/licenses/>.

\*---------------------------------------------------------------------------*/

#include "GAMGInterface.H"
#include "lduMatrix.H"


// * * * * * * * * * * * * * * * * Selectors * * * * * * * * * * * * * * * * //

Foam::autoPtr<Foam::GAMGInterface> Foam::GAMGInterface::New
(
    const lduPrimitiveMesh& lduMesh,
    const lduInterface& fineInterface,
    const labelField& localRestrictAddressing,
    const labelField& neighbourRestrictAddressing
)
{
    word coupleType(fineInterface.type());

    lduInterfaceConstructorTable::iterator cstrIter =
        lduInterfaceConstructorTablePtr_->find(coupleType);

    if (cstrIter == lduInterfaceConstructorTablePtr_->end())
    {
        FatalErrorIn
        (
            "GAMGInterface::New"
            "(const lduPrimitiveMesh& lduMesh,"
            "const lduInterface& fineInterface,"
            "const labelField& localRestrictAddressing,"
            "const labelField& neighbourRestrictAddressing)"
        )   << "Unknown GAMGInterface type " << coupleType << ".\n"
            << "Valid GAMGInterface types are :"
            << lduInterfaceConstructorTablePtr_->toc()
            << exit(FatalError);
    }

    return autoPtr<GAMGInterface>
    (
        cstrIter()
        (
            lduMesh,
            fineInterface,
            localRestrictAddressing,
            neighbourRestrictAddressing
        )
    );
}


// ************************************************************************* //

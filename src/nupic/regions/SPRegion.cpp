/* ---------------------------------------------------------------------
 * Numenta Platform for Intelligent Computing (NuPIC)
 * Copyright (C) 2017, Numenta, Inc.  Unless you have an agreement
 * with Numenta, Inc., for a separate license for this software code, the
 * following terms and conditions apply:
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Affero Public License for more details.
 *
 * You should have received a copy of the GNU Affero Public License
 * along with this program.  If not, see http://www.gnu.org/licenses.
 *
 * http://numenta.org/licenses/
 * ----------------------------------------------------------------------
 */

#include "SPRegion.hpp"

namespace nupic {

	SPRegion::SPRegion(ValueMap& params, Region* region) 
	{
		RegionImpl(region); //Initialize with the RegionImpl constructor
		
	}

	SPRegion::~SPRegion() 
	{
		// TODO
	}
	
	void SPRegion::initialize()
	{
		// TODO
	}

	void SPRegion::compute()
	{
		// TODO
	}

	void SPRegion::serialize( nupic::BundleIO& bundle)
	{
		// TODO
	}
	
	void SPRegion::deserialize( nupic::BundleIO& bundle)
	{
		// TODO
	}

	void SPRegion::write(capnp::AnyPointer::Builder& anyProto) const
	{
		// TODO
	}

	void SPRegion::read(capnp::AnyPointer::Reader& anyProto)
	{
		// TODO
	}

	std::string SPRegion::executeCommand const std::vector<std::string>& args, Int64 index)
	{
		// TODO
	}

	size_t SPRegion::getNodeOutputElementCount(const std::string& outputName)
	{
		// TODO
	}

	void SPRegion::getParameterFromBuffer(const std::string& name,
										Int64 index,
										IWriteBuffer& value)
	{
		// TODO
	}

	void SPRegion::setParameterFromBuffer(const std::string& name,
										Int64 index,
										IReadBuffer& value)
	{
		// TODO
	}
	
	//Static function
	Spec* SPRegion::createSpec()
	{
		// TODO
	}


} /* namespace nupic */

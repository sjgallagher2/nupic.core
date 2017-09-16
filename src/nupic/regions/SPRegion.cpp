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
	SPRegion::SPRegion(ValueMap& params, Region* region) : 
  RegionImpl(region),
  potentialRadius_(16),
  potentialPct_(0.5),
  globalInhibition_(true),
  localAreaDensity_(-1.0),
  numActiveColumnsPerInhArea_(10),
  stimulusThreshold_(0),
  synPermInactiveDec_(0.008),
  synPermActiveInc_(0.05),
  synPermConnected_(0.1),
  minPctOverlapDutyCycles_(0.001),
  dutyCyclePeriod_(1000),
  boostStrength_(0.0),
  seed_(1),
  spVerbosity_(0),
  wrapAround_(true)
  {
    columnCount_=params.getScalar("columnCount")->getValue<NTA_UInt32>();
    inputWidth_ = params.getScalar("inputWidth")->getValue<NTA_UInt32>();
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

	std::string SPRegion::executeCommand(const std::vector<std::string>& args, Int64 index)
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
	
	/* Static */
	Spec* SPRegion::createSpec()
	{
		// TODO
	}


} /* namespace nupic */

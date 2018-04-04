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

#include <nupic/regions/SPRegion.hpp>

#include <vector>

#include <nupic/engine/RegionImpl.hpp>
#include <nupic/algorithms/SpatialPooler.hpp>

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
  wrapAround_(true),
  learn_(true)
  {
    columnCount_= params.getScalar("columnCount")->getValue<NTA_UInt32>();
    inputWidth_ = params.getScalar("inputWidth")->getValue<NTA_UInt32>();
  }

	SPRegion::SPRegion(BundleIO& bundle, Region* region) :
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
  wrapAround_(true),
  learn_(true)
  {
	  deserialize(bundle);
  }

	SPRegion::SPRegion(capnp::AnyPointer::Reader& proto, Region* region) :
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
  wrapAround_(true),
  learn_(true)
  {
    read(proto);
  }


	SPRegion::~SPRegion() 
	{
	}
	
	void SPRegion::initialize()
	{
	  NTA_CHECK(region_ != nullptr);
		dataOut_ = region_->getOutputData("dataOut");
		ArrayRef dataIn = region_->getInputData("dataIn");

		if(dataIn.getCount() != inputWidth_)
		{
		  NTA_THROW
        << "SPRegion::init - Wrong input size: " << dataIn.getCount()
        << " should be: " << inputWidth_;
		}

		if(dataOut_.getCount() != columnCount_)
		{
		  NTA_THROW
		    << "SPRegion::init - Wrong output size: " << dataOut_.getCount()
		    << " should be: " << columnCount_;
		}
	}

	void SPRegion::compute()
	{
	  // TODO Add assertions of parameters
	  std::vector<UInt> inputDimensions_(1,inputWidth_);
	  std::vector<UInt> columnDimensions_ = (1,columnCount_);
		sp.initialize(inputDimensions_,
                  columnDimensions_,
                  potentialRadius_,
                  potentialPct_,
                  globalInhibition_,
                  localAreaDensity_,
                  numActiveColumnsPerInhArea_,
                  stimulusThreshold_,
                  synPermInactiveDec_,
                  synPermActiveInc_,
                  synPermConnected_,
                  minPctOverlapDutyCycles_,
                  dutyCyclePeriod_,
                  boostStrength_,
                  seed_,
                  spVerbosity_,
                  wrapAround_);
		sp.compute(inputVector_, learn_, activeVector_); //TODO Add these to the class, inputVector from Input
		                                                 // object, learn as a parameter, and activeVector
		                                                 // goes with the Output object
	}

	void SPRegion::serialize( nupic::BundleIO& bundle)
	{
		std::ofstream & f = bundle.getOutputStream("spr"); //TODO This output stream probably doesn't exist
		f << columnCount_ << " "
		  << inputWidth_ << " ";
		f.close();
	}
	
	void SPRegion::deserialize( nupic::BundleIO& bundle)
	{
		std::ifstream & f = bundle.getInputStream("spr");
		f >> columnCount_
		  >> inputWidth_;
		f.close();
	}

	void SPRegion::write(capnp::AnyPointer::Builder& anyProto) const
	{
	  auto proto = anyProto.getAs<SPRegionProto>(); // TODO This proto probably doesn't exist
    proto.setColumnCount(columnCount_);
    proto.setInputWidth(inputWidth_);
	}

	void SPRegion::read(capnp::AnyPointer::Reader& anyProto)
	{
		auto proto = anyProto.getAs<SPRegionProto>();
		columnCount_ = proto.getColumnCount();
		inputWidth_ = proto.getInputWidth();
	}

	std::string SPRegion::executeCommand(const std::vector<std::string>& args, Int64 index)
	{
		// TODO
	}


	void SPRegion::getParameterFromBuffer(const std::string& name,
	                    Int64 index,
	                    IWriteBuffer& value)
	  {
	    // TODO
	    const char* where = "SPRegion, while getting parameter: ";

	    Int32 res = 0;
	    if (name == "potentialRadius")
	    {
	      //Write to the value, requires type and size
	      res = value.write((UInt32)(sp.getPotentialRadius()));
	    }
	    else if(name == "potentialPct")
	    {

	    }
	    else if(name == "globalInhibition")
	    {

	    }
	    else if(name == "localAreaDensity")
      {

      }
	    else if(name == "numActiveColumnsPerInhArea")
      {

      }
	    else if(name == "stimulusThreshold")
      {

      }
	    else if(name == "synPermInactiveDec")
      {

      }
	    else if(name == "synPermActiveInc")
      {

      }
	    else if(name == "synPermConnected")
      {

      }
	    else if(name == "minPctOverlapDutyCycles")
      {

      }
	    else if(name == "dutyCyclePeriod")
      {

      }
	    else if(name == "boostStrength")
      {

      }
	    else if(name == "seed")
      {

      }
	    else if(name == "spVerbosity")
      {

      }
	    else if(name == "wrapAround")
      {

      }
	    else if(name == "inputVector")
      {

      }
	    else if(name == "learn")
      {

      }
	    else
	    {

	    }

	  }

	  void SPRegion::setParameterFromBuffer(const std::string& name,
	                    Int64 index,
	                    IReadBuffer& value)
	  {
	    // TODO
	    const char* where = "SPRegion, while setting parameter: ";

	    UInt32 int_param = 0;

	    if (name == "potentialRadius")
      {

      }
      else if(name == "potentialPct")
      {

      }
      else if(name == "globalInhibition")
      {

      }
      else if(name == "localAreaDensity")
      {

      }
      else if(name == "numActiveColumnsPerInhArea")
      {

      }
      else if(name == "stimulusThreshold")
      {

      }
      else if(name == "synPermInactiveDec")
      {

      }
      else if(name == "synPermActiveInc")
      {

      }
      else if(name == "synPermConnected")
      {

      }
      else if(name == "minPctOverlapDutyCycles")
      {

      }
      else if(name == "dutyCyclePeriod")
      {

      }
      else if(name == "boostStrength")
      {

      }
      else if(name == "seed")
      {

      }
      else if(name == "spVerbosity")
      {

      }
      else if(name == "wrapAround")
      {

      }
      else if(name == "inputVector")
      {

      }
      else if(name == "learn")
      {

      }
      else
      {

      }
	  }


	size_t SPRegion::getNodeOutputElementCount(const std::string& outputName)
	{
		NTA_CHECK(outputName == "dataOut") << "Invalid output name: " << outputName;
		return columnCount_;
	}

	
	/* Static */
	Spec* SPRegion::createSpec()
	{
		auto ns = new Spec;
		ns->description =
		"SPRegion is a Network API implementation of the Spatial Pooler algorithm.\n"
		"\n"
		"It is a region for computing the spatial pooler output for a given input \n"
		"in the Network API. Each region is a node in a network, created through a \n"
		"RegionImpl object. ";

		ns->outputs.add(
    "dataOut",
		OutputSpec(
      "List of active columns",
      NTA_BasicType_Real32,
      0,  // count (0 means determined dynamically)
      true, // isRegionLevel
      true  // isDefaultOutput
      ));

		ns->inputs.add(
    "dataIn",
    InputSpec(
      "Data input from sensor or previous region",
      NTA_BasicType_Real32,
      0,  // count
      true, // required
      true, // regionLevel
      true  // isDefaultInput
      ));

		// TODO Set access for all parameters

		ns->parameters.add(
		"columnCount",
		ParameterSpec(
      "Number of columns in the region",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "", // defaultValue
      ParameterSpec::ReadWriteAccess
		  ));

		ns->parameters.add(
		"inputWidth",
		ParameterSpec(
      "Input width size",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "", // defaultValue
      ParameterSpec::ReadWriteAccess
		  ));

		ns->parameters.add(
		"potentialRadius",
		ParameterSpec(
      "Radius from column center of possible connections for synapses",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "16", // defaultValue
      ParameterSpec::ReadWriteAccess
		  ));

		ns->parameters.add(
    "potentialPct",
    ParameterSpec(
      "Percentage of possible connections a column will connect to",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, 1]", // constraints
      "0.5", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "globalInhibition",
    ParameterSpec(
      "Boolean for whether or not global inhibition is to be used",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "enum: [0, 1]", // constraints
      "1", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "localAreaDensity",
    ParameterSpec(
      "Desired maximum density of active columns in a neighborhood",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [-1, ...]", // constraints
      "-1.0", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "numActiveColumnsPerInhArea",
    ParameterSpec(
      "Alternative to localAreaDensity, the top N columns in a neighborhood always selected",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "10", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "stimulusThreshold",
    ParameterSpec(
      "Minimum active synapses for a column to be ON",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "0", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "synPermInactiveDec",
    ParameterSpec(
      "Permanence decrement for inactive synapses",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, 1]", // constraints
      "0.01", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "synPermActiveInc",
    ParameterSpec(
      "Permanence increment for active synapses",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, 1]", // constraints
      "0.1", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "synPermConnected",
    ParameterSpec(
      "Permanence connection threshold for synapses",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: []", // constraints
      "0.1", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "minPctOverlapDutyCycles",
    ParameterSpec(
      "Overlap duty cycle below which a column is boosted",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, 1]", // constraints
      "0.001", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
		"dutyCyclePeriod",
		ParameterSpec(
      "Period of time used to calculate duty cycles",
      NTA_BasicType_UInt32,
      1, // elementCount
      "interval: [1, ...]", // constraints
      "1000". // defaultValue
      ParameterSpec::ReadWriteAccess
		  ));

		ns->parameters.add(
    "boostStrength",
    ParameterSpec(
      "Parameter to control boosting, no boosting = 0.0",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "0.0", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "seed",
    ParameterSpec(
      "Random number generator seed",
      NTA_BasicType_Real32,
      1,  // elementCount
      "interval: [0, ...]", // constraints
      "1", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "spVerbosity",
    ParameterSpec(
      "Verbosity of the Spatial Pooler",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "enum: [0, 1, 2, 3]", // constraints
      "0", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "wrapAround",
    ParameterSpec(
      "Boolean for column wrap around in potential radii",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "enum: [0, 1]", // constraints
      "1", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

		ns->parameters.add(
    "learn",
    ParameterSpec(
      "Spatial pooler boolean for learning",
      NTA_BasicType_UInt32,
      1,  // elementCount
      "enum: [0, 1]", // constraints
      "", // defaultValue
      ParameterSpec::ReadWriteAccess
      ));

	}


} /* namespace nupic */

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

/** @file
 *  A spatial pooler region for the Network API
 */


#ifndef NTA_SPREGION_HPP
#define NTA_SPREGION_HPP

#include <iostream>
#include <vector>

#include <capnp/any.h>

#include <nupic/types/Types.hpp>
#include <nupic/ntypes/Value.hpp>
#include <nupic/engine/RegionImpl.hpp>
#include <nupic/algorithms/SpatialPooler.hpp>
#include <nupic/types/Serializable.hpp>
#include <nupic/engine/Spec.hpp>

namespace nupic {
	
/* Forward declarations */
struct Spec;
class Region;
class Dimensions;
class Input;
class Output;
class Array;
class ArrayRef;
class NodeSet;
class BundleIO;

/*
* SPRegion is a C++ implementation of the python class. It is a region for computing the
* spatial pooler output for a given input in the Network API. Each region is a node in
* a network, created through a RegionImpl object.
*
* @params
* columnCount    Number of columns in the region, required parameter
* inputWidth     Input width size, required parameter
* potentialRadius    Radius from column center of possible connections for synapses
* potentialPct   Percentage of possible connections a column will connect to
* globalInhibition   Boolean for whether or not global inhibition is to be used
* localAreaDensity   Desired maximum density of active columns in a neighborhood
* numActiveColumnsPerInhArea   Alternative to localAreaDensity, the top N columns in a neighborhood always selected
* stimulusThreshold    Minimum active synapses for a column to be ON
* synPermInactiveDec   Permanence decrement for inactive synapses
* synPermActiveInc   Permanence increment for active synapses
* synPermConnected   Permanence connection threshold for synapses
* minPctOverlapDutyCycles    Overlap duty cycle below which a column is boosted
* dutyCyclePeriod    Period of time used to calculate duty cycles
* boostStrength    Parameter to control boosting, no boosting = 0.0
* seed   Random number generator seed
* spVerbosity    Verbosity of the Spatial Pooler
* wrapAround   Boolean for column wrap around in potential radii
*/
class SPRegion: public RegionImpl {
public:
  /* Constructors and Destructor */
  SPRegion(ValueMap& params, Region* region);
  SPRegion(BundleIO& bundle, Region* region);
  SPRegion(capnp::AnyPointer::Reader& proto, Region* region);

  virtual ~SPRegion();

  /* Public methods */
  /* -------- Methods that must be implemented by any RegionImpl subclass ------ */

  // RegionImplFactory expects to find this
  static Spec* createSpec(); 

  // Serialize state
  virtual void serialize(BundleIO& bundle) override;

  // Deserialize state. Must be called from deserializing constructor
  virtual void deserialize(BundleIO& bundle) override;

  // Serialize state with capnp
  using RegionImpl::write;
  void write(capnp::AnyPointer::Builder& anyProto) const;

  // Deserialize state from capnp. Must be called from deserializing constructor.
  using RegionImpl::read;
  void read(capnp::AnyPointer::Reader& anyProto);

  // Inputs/Outputs are made in initialize()
  // It is always called after the constructor (or load from serialized state)
  void initialize();

  // Compute outputs from inputs and internal state
  void compute() override;



  //Execute a command
  virtual std::string executeCommand(const std::vector<std::string>& args, Int64 index) override;

  // Per-node size (in elements) of the given output.
  // For per-region ouputs, it is the total element count.
  // This method is called only for outputs whose size is not specified in the
  // nodespec
  size_t getNodeOutputElementCount(const std::string& outputName) override;

  // Get a parameter from a write buffer.
  // This method is called only by the typed getParameter* methods in the 
  // RegionImpl base class
  //
  // @param index A node index. (-1) indiciates a region-level parameter		
  void getParameterFromBuffer(const std::string& name,
                Int64 index,
                IWriteBuffer& value) override;

  // Set a parameter from a read buffer. 
  // This method is called only by the RegionImpl base class type-specific
  // setParameter* methods.
  //
  // @param index		A node index. (-1) indicates a region-level parameter
  void setParameterFromBuffer(const std::string& name,
                Int64 index,
                IReadBuffer& value) override;
private:
  UInt columnCount_;
  UInt inputWidth_;
  UInt potentialRadius_;
  Real potentialPct_;
  bool globalInhibition_;
  UInt localAreaDensity_;
  UInt numActiveColumnsPerInhArea_;
  UInt stimulusThreshold_;
  Real synPermInactiveDec_;
  Real synPermActiveInc_;
  Real synPermConnected_;
  Real minPctOverlapDutyCycles_;
  UInt dutyCyclePeriod_;
  Real boostStrength_;
  Real seed_;
  UInt spVerbosity_;
  bool wrapAround_;
  
  nupic::algorithms::spatial_pooler::SpatialPooler sp;

  std::vector<UInt> inputVector_;
  std::vector<UInt> activeVector_;
  bool learn_;
  ArrayRef dataOut_;
}; // end class SPRegion

} /* namespace nupic */

#endif /* NTA_SPREGION_HPP */

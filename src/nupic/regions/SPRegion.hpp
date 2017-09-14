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
	 */
	class SPRegion: public RegionImpl {
	public:
		/* Constructor and Destructor */
		SPRegion(ValueMap& params, Region* region);
		~SPRegion();

		/* Public methods */
		/* -------- Methods that must be implemented by any RegionImpl subclass ------ */
		
		// RegionFactory expects to find this
		static Spec* createSpec(); 
		
		// Serialize state
		void serialize(BundleIO& bundle);
		
		// Deserialize state. Must be called from deserializing constructor
		void deserialize(BundleIO& bundle);

		// Serialize state with capnp
		using Serializable::write;
		void write(capnp::AnyPointer::Builder& anyProto) const;
		
		// Deserialize state from capnp. Must be called from deserializing constructor.
		using Serializable::read;
		void read(capnp::AnyPointer::Reader& anyProto);

		// Inputs/Outputs are made in initialize()
		// It is always called after the constructor (or load from serialized state)
		void initialize();

		// Compute ouputs from inputs and internal state
		void compute();

		
		
		//Execute a command
		std::string executeCommand(const std::vector<std::string>& args, Int64 index);

		// Per-node size (in elements) of the given output.
		// For per-region ouputs, it is the total element count.
		// This method is called only for outputs whose size is not specified in the
		// nodespec
		size_t getNodeOutputElementCount(const std::string& outputName);

		// Get a parameter from a write buffer.
		// This method is called only by the typed getParameter* methods in the 
		// RegionImpl base class
		//
		// @param index A node index. (-1) indiciates a region-level parameter		
		void getParameterFromBuffer(const std::string& name,
									Int64 index,
									IWriteBuffer& value);

		// Set a parameter from a read buffer. 
		// This method is called only by the RegionImpl base class type-specific
		// setParameter* methods.
		//
		// @param index		A node index. (-1) indicates a region-level parameter
		void setParameterFromBuffer(const std::string& name,
									Int64 index,
									IReadBuffer& value);
		
	};

} /* namespace nupic */

#endif /* NTA_SPREGION_HPP */

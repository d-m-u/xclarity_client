module XClarityClient
  class Client

    def initialize(connection)
      @connection = connection
    end

    def discover_nodes
      NodeManagement.new(@connection).population
    end

    def discover_scalableComplexes
      ScalableComplexManagement.new(@connection).population
    end

    def discover_cabinet
      CabinetManagement.new(@connection).population
    end

    def fetch_cabinet(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_cabinet = CabinetManagement.new(@connection)
      .get_object_cabinet(uuids, includeAttributes, excludeAttributes)
    end

    def discover_canisters
      CanisterManagement.new(@connection).population
    end

    def fetch_canisters(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_nodes = CanisterManagement.new(@connection)
      .get_object_canisters(uuids, includeAttributes, excludeAttributes)
    end

    def discover_cmms
      CmmManagement.new(@connection).population
    end

    def fetch_cmms(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_cmms = CmmManagement.new(@connection)
      .get_object_cmms(uuids, includeAttributes, excludeAttributes)
    end

    def fetch_fans(uuids = nil, includeAttributes = nil, excludeAttributes = nil)

      array_fans = FanManagement.new(@connection)
      .get_object_fans(uuids, includeAttributes, excludeAttributes)
    end

    def discover_fans
      FanManagement.new(@connection).population
    end

    def discover_switches
      SwitchManagement.new(@connection).population
    end

    def discover_fan_muxes
      FanMuxManagement.new(@connection).population
    end

    def fetch_fan_muxes(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_nodes = FanMuxManagement.new(@connection)
      .get_object_fan_muxes(uuids, includeAttributes, excludeAttributes)
    end

    def discover_chassis
      ChassiManagement.new(@connection).population
    end

    def discover_power_supplies
      PowerSupplyManagement.new(@connection).population
    end

    def fetch_nodes(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      NodeManagement.new(@connection).get_object_nodes(uuids, includeAttributes, excludeAttributes)
    end

    def fetch_chassis(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      ChassiManagement.new(@connection).get_object_chassis(uuids, includeAttributes, excludeAttributes)
    end

    def fetch_scalableComplexes(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      ScalableComplexManagement.new(@connection).get_object_scalableComplexes(uuids, includeAttributes, excludeAttributes)
    end

    def fetch_switches(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      SwitchManagement.new(@connection).get_object_switches(uuids, includeAttributes, excludeAttributes)
    end

    def fetch_power_supplies(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      PowerSupplyManagement.new(@connection).get_object_power_supplies(uuids, includeAttributes, excludeAttributes)
    end
  end
end

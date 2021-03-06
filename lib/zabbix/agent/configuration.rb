module Zabbix::Agent
  class Configuration
    def initialize(config={})
      @config = config
    end

    def server
      @config['Server']
    end

    def server_port
      @config['ServerPort']
    end

    def listen_port
      @config['ListenPort']
    end

    def listen_ip
      @config['ListenIP']
    end

    def source_ip
      @config['SourceIP']
    end

    def start_agents
      @config['StartAgents']
    end

    def refresh_active_checks
      @config['RefreshActiveChecks']
    end

    def disable_active
      @config['DisableActive']
    end

    def enable_remote_commands
      @config['EnableRemoteCommands']
    end

    def debug_level
      @config['DebugLevel']
    end

    def pid_file
      @config['PidFile']
    end

    def log_file
      @config['LogFile']
    end

    def timeout
      @config['Timeout']
    end

    def arbitrary(key)
      @config[key]
    end 

    def self.read(zabbix_conf_file="/etc/zabbix/zabbix-agentd.conf")
      Configuration.new(
          IniParse.parse(File.read(zabbix_conf_file)).to_h.values.first)
    end
  end
end

module SubdomainRoutes
  class TooManySubdomains < StandardError
  end

  module SplitHost
    private
    
    def split_host(host)
      raise HostNotSupplied, "No host supplied!" if host.blank?
      raise HostNotSupplied, "Can't set subdomain for an IP address!" if host =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/
      
      static_domain = Config.static_domains.find { |static_domain| host.include?(static_domain) } if Config.static_domains
      
      if static_domain
        split_host_by_static_domain(host, static_domain)
      else
        split_host_by_domain_length(host)
      end
    end
    
    def split_host_by_static_domain(host, static_domain)
      split_host_by_domain_length(host, static_domain.count(".")+1)
    end
    
    def split_host_by_domain_length(host, domain_length = Config.domain_length)
      parts = host.split('.')
      if domain_length
        domain_parts = [ ]
        domain_length.times { domain_parts.unshift parts.pop }
        if parts.size > 1
          raise TooManySubdomains, "Multiple subdomains found: #{parts.join('.')}. (Have you set SubdomainRoutes::Config.domain_length correctly?)"
        end
        [ parts.pop.to_s, domain_parts.join('.') ]
      else
        [ parts.shift.to_s, parts.join('.') ]
      end
    end
    
    def domain_for_host(host)
      split_host(host).last
    end
    
    def subdomain_for_host(host)
      split_host(host).first
    end
  end
end

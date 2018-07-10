'wget https://archive.apache.org/dist/lucene/solr/7.0.0/solr-7.0.0.tgz & tar -xzf solr-7.0.0/bin/install_solr_service.sh --strip-components=2 & bash ./install_solr_service.sh solr-7.0.0.tgz'
  cmd.run

/etc/default/solr.in.sh:
  file.append:
    - name: /etc/default/solr.in.sh
    - text:
      - ZK_HOST="10.15.82.20:2181,10.15.82.21:2181,10.15.82.22:2181"
      - #SOLR_JAVA_MEM="-Xms512m -Xmx512m"
